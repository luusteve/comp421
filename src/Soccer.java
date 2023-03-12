import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
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
              sc.nextLine();
              listInformationMatchesOfCountry(statement, sc);
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
  private static void listInformationMatchesOfCountry(Statement statement, Scanner sc) throws SQLException {
    try {
      String country = sc.nextLine();
      String querySQL = "SELECT \n" +
              "  T1.country AS team1_country, \n" +
              "  T2.country AS team2_country, \n" +
              "  M.match_date, \n" +
              "  M.round, \n" +
              "  COUNT(DISTINCT CASE WHEN PS.pid = P1.pid THEN 1 ELSE 0 END) AS team1_goals, \n" +
              "  COUNT(DISTINCT CASE WHEN PS.pid = P2.pid THEN 1 ELSE 0 END) AS team2_goals, \n" +
              "  COUNT(DISTINCT CASE WHEN T.mid = M.mid THEN 1 ELSE 0 END) AS seats_sold\n" +
              "FROM \n" +
              "  Ticket T,\n" +
              "  Team T1\n" +
              "  JOIN Team T2 ON T2.national_association_name <> T1.national_association_name\n" +
              "  JOIN Player P1 ON P1.national_association_name = T1.national_association_name\n" +
              "  JOIN Player P2 ON P2.national_association_name = T2.national_association_name \n" +
              "  JOIN teaminmatch TIM1 ON TIM1.national_association_name = T1.national_association_name\n" +
              "  JOIN teaminmatch TIM2 ON TIM2.national_association_name = T2.national_association_name AND TIM1.mid = TIM2.mid\n" +
              "  JOIN Match M ON TIM1.mid = M.mid\n" +
              "  LEFT JOIN playerscored PS ON M.mid = PS.mid \n" +
              "WHERE \n" +
              "  (TIM1.national_association_name = T1.national_association_name AND T2.country = '" + country + "') OR \n" +
              "  (TIM2.national_association_name = T2.national_association_name AND T1.country = '" + country + "')\n" +
              "GROUP BY \n" +
              "  T1.country, T2.country, M.match_date, M.round";
      System.out.println(querySQL);
      java.sql.ResultSet rs = statement.executeQuery(querySQL);
    }
    catch (IllegalStateException | NoSuchElementException e) {
      System.out.println("System.in was closed; exiting");
    }

  }
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

      

      
      while(true) {
        System.out.println(
          "Please input the match identifier and for which country the insert should be made or return to main menu [P]");
        String input = sc.nextLine();
        if (input.equals("P") || input.equals("p")) {
          System.out.println("\n");
          break;
        }
        String[] result = input.split(" ");
        String mid = result[0];
        String team = "Team " + result[1];
        System.out.println(mid);
        System.out.println(team);

      // }
        
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
