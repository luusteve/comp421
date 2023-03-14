import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;
import java.util.StringTokenizer;

public class Soccer {

  private final static int maxPlayers = 11;

  public static void main(String[] args) throws SQLException {
    // Unique table names. Either the user supplies a unique identifier as a command
    // line argument, or the program makes one up.
    String tableName = "";
    int sqlCode = 0; // Variable to hold SQLCODE
    String sqlState = "00000"; // Variable to hold SQLSTATE

    if (args.length > 0)
      tableName += args[0];
    else
      tableName += "exampletbl";

    // Register the driver. You must register the driver before you can use it.
    try {
      DriverManager.registerDriver(new com.ibm.db2.jcc.DB2Driver());
    } catch (Exception cnfe) {
      System.out.println("Class not found");
    }

    // This is the url you must use for DB2.
    // Note: This url may not valid now ! Check for the correct year and semester
    // and server name.
    String url = "jdbc:db2://winter2023-comp421.cs.mcgill.ca:50000/cs421";

    // REMEMBER to remove your user id and password before submitting your code!!
    String your_userid = null;
    String your_password = null;
    // AS AN ALTERNATIVE, you can just set your password in the shell environment in
    // the Unix (as shown below) and read it from there.
    // $ export SOCSPASSWD=yoursocspasswd
    if (your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null) {
      System.err.println("Error!! do not have a password to connect to the database!");
      System.exit(1);
    }
    if (your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null) {
      System.err.println("Error!! do not have a password to connect to the database!");
      System.exit(1);
    }
    Connection con = DriverManager.getConnection(url, your_userid, your_password);
    Statement statement = con.createStatement();

    Scanner sc = new Scanner(System.in);
    try {
      while (true) {
        String options = "1. List information of matches of a country\n\t2. Insert initial player information for a match \n\t3. Insert goal scored\n\t4. Exit application\nPlease enter your option:";
        String validOptionMsg = "Please choose a valid option:\n\t" + options;
        System.out.println("Soccer Main Menu\n\t" + options);
        if (sc.hasNextInt()) {
          switch (sc.nextInt()) {
            case 1:
              sc.nextLine();
              listInformationMatchesOfCountry(statement, sc);
              break;
            case 2:
              sc.nextLine();
              insertInitialPlayerInformation(statement, sc);
              break;
            case 3:
            case 4:
              sc.nextLine();
              exitApplication(con, statement);
              break;
            default:
              sc.nextLine();
              System.out.println(validOptionMsg);

          }
        } else {
          System.out.println(validOptionMsg);
        }
      }
    } catch (IllegalStateException | NoSuchElementException e) {
      System.out.println("System.in was closed; exiting");
    }

    // Finally but importantly close the statement and connection
    statement.close();
    con.close();
  }

  /**
   * List countries match number of goals and seats sold
   * 
   * @param con       Connection
   * @param statement Statement
   * @throws SQLException
   */
  private static void listInformationMatchesOfCountry(Statement statement, Scanner sc) throws SQLException {
    try {
      while (true) {
        System.out.println(
            "\nPlease input a Country or return to main menu [P]");
        String country = sc.nextLine();
        if (country.equals("P") || country.equals("p")) {
          System.out.println("\n");
          break;
        }

        Map<String, List<List<String>>> teamInMatches = getTeaminmatches(statement, country);

        for (Map.Entry<String, List<List<String>>> entry : teamInMatches.entrySet()) {
          List<String> goalOne = new ArrayList<>();
          List<String> goalTwo = new ArrayList<>();
          List<String> seats = new ArrayList<>();
          for (String teamOne : entry.getValue().get(0)) {
            List<String> pids = getPlayersPidInTeam(statement, teamOne);
            goalOne.add(String.valueOf(getCountGoalsByPlayersInTeam(statement, pids, entry.getKey())));
          }
          for (String teamTwo : entry.getValue().get(1)) {
            List<String> pids = getPlayersPidInTeam(statement, teamTwo);
            goalTwo.add(String.valueOf(getCountGoalsByPlayersInTeam(statement, pids, entry.getKey())));
          }

          String tickets = String.valueOf(getCountTicketSoldByMid(statement, entry.getKey()));
          seats.add(tickets);

          List<List<String>> teams = entry.getValue();
          teams.add(goalOne);
          teams.add(goalTwo);
          teams.add(seats);
          teamInMatches.replace(entry.getKey(), teams);
        }

        for (Map.Entry<String, List<List<String>>> entry : teamInMatches.entrySet()) {

          StringBuilder sb = new StringBuilder();

          sb.append("\t" + entry.getValue().get(0).get(0));
          sb.append("\t" + entry.getValue().get(1).get(0));
          sb.append("\t" + entry.getValue().get(2).get(0));
          sb.append("\t" + entry.getValue().get(3).get(0));
          sb.append("\t" + entry.getValue().get(4).get(0));
          sb.append("\t" + entry.getValue().get(5).get(0));
          sb.append("\t" + entry.getValue().get(6).get(0));

          System.out.println(sb.toString());

        }

      }
    } catch (IllegalStateException | NoSuchElementException e) {
      System.out.println("System.in was closed; exiting");
    }

  }

  private static int getCountTicketSoldByMid(Statement statement, String mid) throws SQLException {
    int count = 0;

    String querySQL = "SELECT COUNT(CASE WHEN T.mid = " + mid + " THEN 1 END) AS seats_sold FROM Ticket T;";
    java.sql.ResultSet rs = statement.executeQuery(querySQL);

    while (rs.next()) {

      count += rs.getInt(1);

    }

    return count;
  }

  private static int getCountGoalsByPlayersInTeam(Statement statement, List<String> pids, String mid) throws SQLException {
    int count = 0;
    for (String pid : pids) {
      String querySQL = "SELECT COUNT(CASE WHEN PS.pid = " + pid + " THEN 1 END) FROM Playerscored PS WHERE PS.mid =" + mid + ";";

      java.sql.ResultSet rs = statement.executeQuery(querySQL);

      while (rs.next()) {

        count += rs.getInt(1);

      }
    }
    return count;
  }

  private static Map<String, List<List<String>>> getTeaminmatches(Statement statement, String country)
      throws SQLException {

    String queryTeaminmatch = "SELECT \n" +
        " TIM1.national_association_name AS team1, \n" +
        " TIM2.national_association_name AS team2, \n" +
        " TIM1.mid AS match_mid \n" +
        " FROM \n" +
        " Teaminmatch TIM1, \n" +
        " Teaminmatch TIM2 \n" +
        " WHERE \n" +
        " TIM1.national_association_name <> TIM2.national_association_name AND \n" +
        " TIM1.mid = TIM2.mid AND TIM1.national_association_name = \'Team " + country + "\';";

    java.sql.ResultSet rs = statement.executeQuery(queryTeaminmatch);

    Map<String, List<List<String>>> teamInMatches = new HashMap<>();
    while (rs.next()) {
      List<List<String>> teams = new ArrayList<>();
      List<String> teamOne = new ArrayList<>();
      List<String> teamTwo = new ArrayList<>();

      teamOne.add(rs.getString(1));
      teamTwo.add(rs.getString(2));
      teams.add(teamOne);
      teams.add(teamTwo);
      if (teamInMatches.get(String.valueOf(rs.getInt(3))) == null) {
        teamInMatches.put(String.valueOf(rs.getInt(3)), teams);
      } else {
        teamInMatches.replace(String.valueOf(rs.getInt(3)), teams);
      }
    }

    for (Map.Entry<String, List<List<String>>> entry : teamInMatches.entrySet()) {
      String querySql = "SELECT M.match_Date, M.round FROM Match M WHERE M.mid = " + entry.getKey() + ";";

      java.sql.ResultSet resultSet = statement.executeQuery(querySql);

      List<String> dates = new ArrayList<>();
      List<String> rounds = new ArrayList<>();
      while (resultSet.next()) {
        dates.add(String.valueOf(resultSet.getDate(1)));
        rounds.add(resultSet.getString(2));

        List<List<String>> updatedTeams = entry.getValue();

        updatedTeams.add(dates);
        updatedTeams.add(rounds);
        teamInMatches.replace(entry.getKey(), updatedTeams);
      }

    }

    return teamInMatches;
  }

  private static List<String> getPlayersPidInTeam(Statement statement, String country) throws SQLException {
    String querySQL = "SELECT P.pid FROM Player P WHERE P.national_association_name = \'" + country + "\';";

    java.sql.ResultSet rs = statement.executeQuery(querySQL);

    List<String> players = new ArrayList<>();
    while (rs.next()) {
      players.add(rs.getString(1));
    }

    return players;
  }

  private static Map<String, List<String>> getMatchGoals() {
    return null;
  }

  /**
   * Insert a player to a match
   * 
   * @param con
   * @param statement
   * @param sc
   * @throws SQLException
   */
  private static void insertInitialPlayerInformation(Statement statement, Scanner sc)
      throws SQLException {
    try {

      String querySQL = "SELECT M.mid, M.match_date FROM Match AS M WHERE M.match_date >= (CURRENT DATE) AND M.match_date <= (CURRENT DATE +3 DAY);";

      java.sql.ResultSet rs = statement.executeQuery(querySQL);

      Map<String, Date> midAndDates = new HashMap<>();

      System.out.println("Matches in the next 3 days:\n");
      while (rs.next()) {
        // mid and dates
        midAndDates.put(rs.getString(1), rs.getDate(2));
      }

      for (Map.Entry<String, Date> entry : midAndDates.entrySet()) {
        StringBuilder sb = new StringBuilder();
        String mid = entry.getKey();

        Map<String, List<String>> teamsByMid = getTeamsByMid(statement, mid);

        String teamOne = teamsByMid.get(mid).get(0);
        String teamTwo = teamsByMid.get(mid).get(1);

        // Matches for which the participating countries are not known should not be
        // listed.
        if (teamOne != null && teamTwo != null) {
          sb.append(mid + "\t");
          // teams
          sb.append(teamsByMid.get(mid).get(0) + "\t");
          sb.append(teamsByMid.get(mid).get(1) + "\t");
          sb.append(entry.getValue().toString() + "\t");
          System.out.println(sb.toString() + "\n");
        }

      }

      while (true) {
        System.out.println(
            "Please input the match identifier and for which country the insert should be made or return to main menu [P]");
        String input = sc.nextLine();
        if (input.equals("P") || input.equals("p")) {
          System.out.println("\n");
          break;
        }
        String[] result = input.split(" ");
        String mid = result[0];

        String country = result[1];
        String team = "Team " + country;

        Map<String, List<List<String>>> teamInfo = getPlayersByTeam(statement, team);
        List<String> pids = teamInfo.get(team).get(0);
        List<String> names = teamInfo.get(team).get(1);
        List<String> numbers = teamInfo.get(team).get(2);
        List<String> positions = teamInfo.get(team).get(3);
        Map<String, List<List<String>>> playerInfo = new HashMap<>();
        for (String pid : pids) {
          playerInfo.putAll(getPlayerInfoWithPidAndMid(statement, pid, mid));
        }

        List<String> nonAssignedPids = new ArrayList<>();
        Iterator<Map.Entry<String, List<List<String>>>> iterator = playerInfo.entrySet().iterator();

        // Iterate over the HashMap
        while (iterator.hasNext()) {

          // Get the entry at this iteration
          Map.Entry<String, List<List<String>>> entry = iterator.next();

          // Check if this key is the required key
          if (entry.getValue().get(0).isEmpty()) {
            nonAssignedPids.add(entry.getKey());
            // Remove this entry from HashMap
            iterator.remove();
          }
        }

        if (pids.isEmpty()) {
          System.out.println("\nNo player were found in team " + country + " playing for match " + mid);
          break;
        }

        System.out.println("\nThe following players from " + result[1] + " are already entered for match " + mid);

        for (Map.Entry<String, List<List<String>>> entry : playerInfo.entrySet()) {
          StringBuilder sb = new StringBuilder();
          String pid = entry.getKey();
          int index = pids.indexOf(pid);
          sb.append("\t" + names.get(index));
          sb.append("\t" + numbers.get(index));
          sb.append("\t" + positions.get(index));
          sb.append("\t from minute: " + entry.getValue().get(0).get(0));
          sb.append("\t to minute: " + entry.getValue().get(1).get(0));
          sb.append("\t yellow: " + entry.getValue().get(2).get(0));
          if (Boolean.parseBoolean(entry.getValue().get(3).get(0))) {
            sb.append("\t red: 1");
          } else {
            sb.append("\t red: 0");
          }
          System.out.println(sb.toString());
        }

        if (!nonAssignedPids.isEmpty()) {
          System.out.println("\nPossible players not yet selected:");

          for (String pid : nonAssignedPids) {

            StringBuilder sb = new StringBuilder();
            int index = pids.indexOf(pid);
            int indexNonAssignedPid = nonAssignedPids.indexOf(pid);
            sb.append(indexNonAssignedPid + ".\t");
            sb.append(names.get(index) + "\t");
            sb.append(numbers.get(index) + "\t");
            sb.append(positions.get(index) + "\t");

            System.out.println(sb.toString());
          }
          if (playerInfo.size() > maxPlayers) {
            System.out.println("Cannot enter more player, max players of " + maxPlayers + " has been reached\n");
            break;
          }
          while (true) {
            System.out.println(
                "\nEnter the number of the player you want to insert or [P] to go to the previous menu.");
            String scanner = sc.nextLine();
            if (scanner.equals("P") || scanner.equals("p")) {
              System.out.println("\n");
              break;
            }
            int index = Integer.parseInt(scanner);
            if (nonAssignedPids.size() > index && index >= 0) {
              String pid = nonAssignedPids.get(index);

              index = pids.indexOf(pid);

              String position = positions.get(index);
              String insertSQL = "INSERT INTO Playerplaysin VALUES ( " + pid + " , " + mid + ", 0, NULL, \'"
                  + position + "\', 0, 0);";
              statement.executeUpdate(insertSQL);
              break;
            }
            System.out.println("Player " + scanner + " is not an option.");
          }
          break;
        }

      }

    } catch (IllegalStateException | NoSuchElementException e) {
      System.out.println("System.in was closed; exiting");
    }
  }

  private static Map<String, List<String>> getTeamsByMid(Statement statement, String mid)
      throws SQLException {
    String teamInMid = "SELECT DISTINCT TM.national_association_name FROM Teaminmatch AS TM WHERE TM.mid = \'"
        + mid + "\';";
    java.sql.ResultSet rs = statement.executeQuery(teamInMid);

    Map<String, List<String>> teamsByMid = new HashMap<>();
    List<String> teams = new ArrayList<>();
    while (rs.next()) {
      teams.add(rs.getString(1).replaceFirst("^Team", ""));
    }

    teamsByMid.put(mid, teams);

    return teamsByMid;
  }

  private static Map<String, List<List<String>>> getPlayersByTeam(Statement statement, String team)
      throws SQLException {
    String teamInMid = "SELECT DISTINCT P.pid, P.name, P.shirt_number, P.general_position FROM Player AS P WHERE P.national_association_name = \'"
        + team + "\';";
    java.sql.ResultSet rs = statement.executeQuery(teamInMid);

    Map<String, List<List<String>>> teamsByMid = new HashMap<>();
    List<List<String>> teams = new ArrayList<>();
    List<String> pids = new ArrayList<>();
    List<String> names = new ArrayList<>();
    List<String> shirtNumbers = new ArrayList<>();
    List<String> generalPositions = new ArrayList<>();
    while (rs.next()) {
      pids.add(String.valueOf(rs.getInt(1)));
      names.add(rs.getString(2));
      shirtNumbers.add(String.valueOf(rs.getInt(3)));
      generalPositions.add(rs.getString(4));
    }
    teams.add(pids);
    teams.add(names);
    teams.add(shirtNumbers);
    teams.add(generalPositions);

    teamsByMid.put(team, teams);

    return teamsByMid;
  }

  private static Map<String, List<List<String>>> getPlayerInfoWithPidAndMid(Statement statement,
      String pid, String mid) throws SQLException {
    String playersInMid = "SELECT DISTINCT PPS.enter_time, PPS.exit_time, PPS.number_of_yellow_card, PPS.received_red_card FROM Playerplaysin AS PPS WHERE PPS.mid = \'"
        + mid + "\' AND PPS.pid = \'" + pid + "\';";

    java.sql.ResultSet rs = statement.executeQuery(playersInMid);

    Map<String, List<List<String>>> playerInfoByMid = new HashMap<>();
    List<List<String>> playerInfos = new ArrayList<>();
    List<String> enterTimes = new ArrayList<>();
    List<String> exitTimes = new ArrayList<>();
    List<String> numberOfYellowCards = new ArrayList<>();
    List<String> receivedRedCards = new ArrayList<>();
    while (rs.next()) {
      enterTimes.add(String.valueOf(rs.getInt(1)));
      exitTimes.add(String.valueOf(rs.getInt(2)));
      numberOfYellowCards.add(String.valueOf(rs.getInt(3)));
      receivedRedCards.add(String.valueOf(rs.getBoolean(4)));
    }

    playerInfos.add(enterTimes);
    playerInfos.add(exitTimes);
    playerInfos.add(numberOfYellowCards);
    playerInfos.add(receivedRedCards);

    playerInfoByMid.put(pid, playerInfos);
    return playerInfoByMid;
  }

  /**
   * Close the statement, connection and exit the application
   * 
   * @param con       Connection
   * @param statement Statement
   * @throws SQLException
   */
  private static void exitApplication(Connection con, Statement statement) throws SQLException {
    statement.close();
    con.close();
    System.exit(0);
  }
}
