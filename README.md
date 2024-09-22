# IPL Team and Player Management System

This project provides a comprehensive SQL script for managing IPL (Indian Premier League) teams, players, and their performances. It includes the creation of necessary tables, triggers, and procedures to efficiently manage data related to IPL teams, players, and their performances.

## Project Structure

### 1. Team Table
This table stores information about the IPL teams, including:
- `team_id`: Unique identifier for each team (Primary Key).
- `team_name`: Name of the team.
- `team_points`: Points earned by the team.

### 2. Player Table
This table stores details of players, including:
- `player_id`: Unique identifier for each player (Primary Key).
- `player_name`: Name of the player.
- `player_team`: The team to which the player belongs (Foreign Key referencing `team_id` in the `Team` table).
- `player_role`: The role of the player (e.g., Batsman, Bowler, All-Rounder).

### 3. Player_Performance Table
This table stores performance statistics of the players, including:
- `teamID`: Team identifier (Foreign Key referencing `team_id` in the `Team` table).
- `player_num`: Player identifier (Foreign Key referencing `player_id` in the `Player` table).
- `runs`: Total runs scored by the player.
- `wickets`: Total wickets taken by the player.
- `catches`: Total catches taken by the player.
- **Primary Key**: Composite key on `player_num` and `teamID`.

### 4. Triggers
This script includes several triggers for handling various database events:
- **Before Update**: Validates conditions before updating player performance data.
- **After Update**: Logs information after updating player performance data.
- **Before Insert**: Validates conditions before inserting new player performance data.
- **After Insert**: Logs information after inserting new player performance data.
- **Before Delete**: Logs information before deleting player performance data.
- **After Delete**: Logs information after deleting player performance data.

### 5. Stored Procedures (Package)
The script also includes a package containing stored procedures for:
- Updating all player runs for a specific team.
- Inserting performance records for players.
- Deleting players' performance data based on certain criteria.

## Usage

### Execution
- **Create Tables**: Run the SQL script to create the `Team`, `Player`, and `Player_Performance` tables.
- **Insert Data**: The script includes sample data insertion for teams and players. You can modify or add more data as needed.
- **Triggers**: The triggers will automatically execute based on the actions (Insert, Update, Delete) performed on the `Player_Performance` table.
- **Stored Procedures**: Use the provided package procedures to update, insert, or delete player performance data.

### Sample Execution
```sql
DECLARE
  total_runs INT;
BEGIN
  -- Update runs for DC team
  Player_Performance_Pkg.Update_All_Runs('DC', 300);
  DBMS_OUTPUT.PUT_LINE('All Runs updated successfully.');
  
  -- Insert new performances for various teams
  Player_Performance_Pkg.Insert_Performances;
  DBMS_OUTPUT.PUT_LINE('All Performances inserted successfully.');

  -- Delete players based on specified conditions
  Player_Performance_Pkg.Delete_Players_Performance;
  DBMS_OUTPUT.PUT_LINE('All Poor performances deleted successfully.');
    
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
