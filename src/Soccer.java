import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Soccer {
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
        String options = "1. List information of matches of a country\n\t2. Insert initial player information for a match \n\t3. Insert goal scored\n\t4. Exit application";
        String validOptionMsg = "Please choose a valid option:\n\t" + options;
        System.out.println("Soccer Main Menu\n\t" + options);
        if (sc.hasNextInt()) {
          switch (sc.nextInt()) {
            case 1:
            case 2:
              sc.nextLine();
              insertInitialPlayerInformation(con, statement, sc);
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

    // Creating a table
    // try
    // {
    // String createSQL = "CREATE TABLE " + tableName + " (id INTEGER, name VARCHAR
    // (25)) ";
    // System.out.println (createSQL ) ;
    // statement.executeUpdate (createSQL ) ;
    // System.out.println ("DONE");
    // }
    // catch (SQLException e)
    // {
    // sqlCode = e.getErrorCode(); // Get SQLCODE
    // sqlState = e.getSQLState(); // Get SQLSTATE

    // // Your code to handle errors comes here;
    // // something more meaningful than a print would be good
    // System.out.println("Code: " + sqlCode + " sqlState: " + sqlState);
    // System.out.println(e);
    // }

    // // Inserting Data into the table
    // try
    // {
    // String insertSQL = "INSERT INTO " + tableName + " VALUES ( 1 , \'Vicki\' ) "
    // ;
    // System.out.println ( insertSQL ) ;
    // statement.executeUpdate ( insertSQL ) ;
    // System.out.println ( "DONE" ) ;

    // insertSQL = "INSERT INTO " + tableName + " VALUES ( 2 , \'Vera\' ) " ;
    // System.out.println ( insertSQL ) ;
    // statement.executeUpdate ( insertSQL ) ;
    // System.out.println ( "DONE" ) ;
    // insertSQL = "INSERT INTO " + tableName + " VALUES ( 3 , \'Franca\' ) " ;
    // System.out.println ( insertSQL ) ;
    // statement.executeUpdate ( insertSQL ) ;
    // System.out.println ( "DONE" ) ;

    // }
    // catch (SQLException e)
    // {
    // sqlCode = e.getErrorCode(); // Get SQLCODE
    // sqlState = e.getSQLState(); // Get SQLSTATE

    // // Your code to handle errors comes here;
    // // something more meaningful than a print would be good
    // System.out.println("Code: " + sqlCode + " sqlState: " + sqlState);
    // System.out.println(e);
    // }

    // // Querying a table
    // try
    // {
    // String querySQL = "SELECT id, name from " + tableName + " WHERE NAME =
    // \'Vicki\'";
    // System.out.println (querySQL) ;
    // java.sql.ResultSet rs = statement.executeQuery ( querySQL ) ;

    // while ( rs.next ( ) )
    // {
    // int id = rs.getInt ( 1 ) ;
    // String name = rs.getString (2);
    // System.out.println ("id: " + id);
    // System.out.println ("name: " + name);
    // }
    // System.out.println ("DONE");
    // }
    // catch (SQLException e)
    // {
    // sqlCode = e.getErrorCode(); // Get SQLCODE
    // sqlState = e.getSQLState(); // Get SQLSTATE

    // // Your code to handle errors comes here;
    // // something more meaningful than a print would be good
    // System.out.println("Code: " + sqlCode + " sqlState: " + sqlState);
    // System.out.println(e);
    // }

    // //Updating a table
    // try
    // {
    // String updateSQL = "UPDATE " + tableName + " SET NAME = \'Mimi\' WHERE id =
    // 3";
    // System.out.println(updateSQL);
    // statement.executeUpdate(updateSQL);
    // System.out.println("DONE");

    // // Dropping a table
    // String dropSQL = "DROP TABLE " + tableName;
    // System.out.println ( dropSQL ) ;
    // statement.executeUpdate ( dropSQL ) ;
    // System.out.println ("DONE");
    // }
    // catch (SQLException e)
    // {
    // sqlCode = e.getErrorCode(); // Get SQLCODE
    // sqlState = e.getSQLState(); // Get SQLSTATE

    // // Your code to handle errors comes here;
    // // something more meaningful than a print would be good
    // System.out.println("Code: " + sqlCode + " sqlState: " + sqlState);
    // System.out.println(e);
    // }

    // Finally but importantly close the statement and connection
    statement.close();
    con.close();
  }

  /**
   * Inserts all relevant information for when a Goal is scored
   * 
   * @param con       Connection
   * @param statement Statement
   * @throws SQLException
   */
  private static void insertInitialPlayerInformation(Connection con, Statement statement, Scanner sc)
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

        Map<String, List<String>> teamsByMid = getTeamsByMid(con, statement, mid);

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

        System.out.println("\nThe following players from " + result[1] + " are already entered for match " + mid);

        String team = "Team " + result[1];

        Map<String, List<List<String>>> teamInfo = getPlayersByTeam(con, statement, team);
        List<String> pids = teamInfo.get(team).get(0);
        List<String> names = teamInfo.get(team).get(1);
        List<String> numbers = teamInfo.get(team).get(2);
        List<String> positions = teamInfo.get(team).get(3);
        Map<String, List<List<String>>> playerInfo = new HashMap<>();
        for (String pid : pids) {
          playerInfo.putAll(getPlayerInfoWithPidAndMid(con, statement, pid, mid));
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
            sb.append(pid + ".\t");
            int index = pids.indexOf(pid);
            sb.append(names.get(index) + "\t");
            sb.append(numbers.get(index) + "\t");
            sb.append(positions.get(index) + "\t");

            System.out.println(sb.toString());
          }
          while (true) {
            System.out.println(
                "\nEnter the number of the player you want to insert or [P] to go to the previous menu.");
            String scanner = sc.nextLine();
            if (input.equals("P") || input.equals("p")) {
              System.out.println("\n");
              break;
            }
            if (!nonAssignedPids.contains(scanner)) {
              int index = pids.indexOf(scanner);
              String position = positions.get(index);
              String insertSQL = "INSERT INTO Playerplaysin VALUES ( " + scanner + " , " + mid + ", 0, NULL, \'"
                  + position + "\', 0, 0);";
              statement.executeUpdate(insertSQL);
              break;
            }
            System.out.println("Player with pid: " + scanner + "does not belong in this team or match");
          }
          break;
        }

      }

    } catch (IllegalStateException | NoSuchElementException e) {
      System.out.println("System.in was closed; exiting");
    }
  }

  private static Map<String, List<String>> getTeamsByMid(Connection con, Statement statement, String mid)
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

  private static Map<String, List<List<String>>> getPlayersByTeam(Connection con, Statement statement, String team)
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

  private static Map<String, List<List<String>>> getPlayerInfoWithPidAndMid(Connection con, Statement statement,
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
