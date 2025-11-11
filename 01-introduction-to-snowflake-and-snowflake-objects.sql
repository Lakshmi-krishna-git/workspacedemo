
-- 1.0.0   Introduction to Snowflake and Snowflake Objects
--         The purpose of this lab is to familiarize you with Snowflake’s
--         Snowsight user interface. Specifically, you will learn how to use
--         Snowsight worksheets to create and use Snowflake objects that you
--         will use to run queries in your day-to-day work. You will also
--         explore Snowsight Workspaces.
--         - Log in and set up MFA.
--         - Familiarize yourself with the Snowsight user interface.
--         - Create and explore worksheets.
--         - Set the context.
--         - Create warehouses, databases, schemas, and tables.
--         - Run simple queries.
--         - Set your user defaults and profile.
--         - Explore Workspaces.
--         You are working for Snowbear Air, which is an airline that flies to
--         fun destinations all over the world. You’ve been asked to create a
--         few Snowflake objects in a development environment to test out your
--         SQL statements. You will need to:
--         - Create a database and a schema
--         - Create a virtual warehouse
--         - Create a table and populate it with data
--         - Run some test queries
--         Before getting started, make sure you have downloaded the lab files
--         for this course to a convenient location and unzipped the archive.
--         When you do this, you will see a folder named USERS. This folder
--         contains sub-folders with usernames - locate your username and open
--         that folder. These are the SQL files you will use throughout this
--         course.
--         HOW TO COMPLETE THIS LAB
--         Since the workbook PDF has useful diagrams and illustrations (not
--         present in the .SQL files), we recommend that you read the
--         instructions from the workbook PDF. In order to execute the code
--         presented in each step, use the SQL code file provided for this lab.
--         For this lab in particular, you MUST use the workbook for the first
--         part, as you will be doing things outside of the Worksheet area (and
--         thus, the SQL file will not be visible).
--         Let’s get started!

-- 1.1.0   Log In and Set Up MFA
--         Snowflake is secure by default. MFA is enforced for all Snowsight
--         users. The instructions below explain how to log in to Snowsight and
--         set up MFA.
--         Your instructor will have already walked you through this process.

-- 1.1.1   Access the URL provided to you for this course.
--         You will be taken to a login screen for the lab account.

-- 1.1.2   Enter your username and temporary password.
--         Obtain these credentials from your instructor.

-- 1.1.3   Set Up MFA using the Passkey method.
--         You will be prompted to Set up MFA.
--         Click on the Passkey option.
--         Follow the options available on your local machine to save the
--         passkey. We recommend saving the passkey locally using either a
--         browser-based password manager, or using Windows Hello (on a Windows
--         machine). Most options will require verification of your identity
--         using biometrics or a PIN.
--         Once the passkey has been successfully added, give it a nickname and
--         then click Continue.
--         If the passkey method does not work in your environment, you can
--         choose to set up MFA using the authenticator method.

-- 1.1.4   Change your password when prompted.
--         This is not an error - the lab environments are set up so all users
--         are asked to change their password the first time they log in.

-- 1.2.0   Explore the Home Screen
--         When you first log in, you will be placed into the home screen.
--         You may see a What’s new pop-up tour of the changes to the Snowsight
--         navigation menu. Click though the What’s new tour to see the changes.
--         The home screen will look similar to the screen below:

-- 1.2.1   Locate the user menu.
--         This is located in the lower left corner. Here, you will find your
--         username and the role that you currently have set. You will learn
--         more about roles later on. Your Snowflake account information is also
--         available from the user menu. Click the user menu to see the options.

-- 1.2.2   Locate the left navigation bar.
--         This is located along the left side, above the user menu. You can use
--         the navigation bar to move through various areas of the user
--         interface. You can hide (collapse) or show (expand) the navigation
--         bar by clicking on the highlighted icon.

-- 1.2.3   Locate the active panel.
--         This is the large area on the right. This will change based on which
--         menu option you have activated from the navigation bar. Select
--         various options in the navigation bar and observe the changes to the
--         active panel.
--         Clicking the Snowflake logo in the upper left corner, or clicking the
--         Home icon will bring you back to the home screen.

-- 1.3.0   Review Your User Settings

-- 1.3.1   Access the Settings page.
--         Click the user menu in the lower left corner, then select Settings.

-- 1.3.2   Review your profile.
--         The settings page defaults to My Profile. Observe that you are unable
--         to change your name or email address. This is because your user role
--         does not have the privileges to make those changes.
--         You will set your name and email address by running a stored
--         procedure in a subsequent step.

-- 1.3.3   Review the Authentication settings.
--         On the settings page, select Authentication.
--         You can change your password and manage your MFA settings. Confirm
--         that you see the MFA method that you set up. You should see only one
--         registered MFA method similar to the example shown below.
--         Multiple MFA methods can be set up for flexibility. It may be
--         beneficial to set up one passkey method and one authenticator app
--         (TOTP - Time-based One-Time Passcode) method. When more than one
--         method has been set up, one of the configured methods can be set as
--         the default.

-- 1.3.4   Explore the other user settings.
--         Preferences - You can set preferences like the theme, language,
--         default role, and default warehouse. Do not worry about the default
--         role and warehouse right now. You will work with these shortly.
--         Notifications - You can toggle whether or not to receive a
--         notification when a query finishes running in the background.

-- 1.3.5   Optionally, set the Snowsight UI appearance to Dark mode.
--         Click the user menu in the lower left corner, then select Appearance
--         > Dark. Switch back to the System mode if you don’t like the Dark
--         mode.

-- 1.3.6   Return to the home screen.
--         Click the Snowflake logo in the upper left corner.

-- 1.4.0   Explore Universal Search
--         Universal Search lets you easily find objects in your account, data
--         products in the Snowflake marketplace, relevant Snowflake
--         documentation, and knowledge base articles. You can use natural
--         language to describe what you are looking for.
--         You can access Universal Search from the Snowsight home page or by
--         using the Search option in the navigation bar.

-- 1.4.1   Go to the Search page.
--         Click the Search icon in the navigation bar.

-- 1.4.2   Search for information on virtual warehouses.
--         In the search field, type in: What are virtual warehouses? Then press
--         the enter or return key to execute the search.
--         Observe that Universal Search returns information in various
--         categories like Documentation, Tables and views, Marketplace etc.
--         Optionally, click on one of the documentation links. The relevant
--         document opens in a new browser tab. View the documentation and then
--         return to the Snowsight UI.

-- 1.4.3   Search for documentation on Snowflake supported SQL commands.
--         In the search field, type in: Show me documentation on supported SQL
--         commands. Then press the enter or return key to execute the search.
--         In the search results, you should see the SQL command reference.
--         Click the link, the command reference opens in a new browser tab.
--         The SQL command reference is a valuable resource. From here, you can
--         view all the SQL commands supported by Snowflake. The All commands
--         entry provides an alphabetical list where you can find specific
--         commands and click on them to be taken to the documentation page for
--         that command.
--         Browse the command reference and then return to the Snowsight UI.

-- 1.5.0   Create and Explore Worksheets
--         In this course, most of the work you do will be through worksheets.
--         Worksheets are managed from the Worksheets page.
--         You can organize your worksheets into folders. In this course, we
--         will not be using folders to organize our worksheets.

-- 1.5.1   Go to the Worksheets page.
--         In the left navigation bar select Projects, then select Worksheets.

-- 1.5.2   Create a new empty worksheet.
--         From the Worksheets page, click the blue plus (+) button in the upper
--         right corner. This will open a new empty worksheet.
--         Check the name of the worksheet. Observe that the name of the new
--         worksheet is a date and time.

-- 1.5.3   Change the name of your new worksheet to Empty Worksheet.
--         Click the three vertical dots to the right of the worksheet name and
--         select Rename from the drop-down list. You can also simply double-
--         click on the name of the worksheet to edit the name. Regardless of
--         your chosen method, the current name should automatically be
--         highlighted - type in Empty Worksheet and press ENTER (or RETURN).
--         The new worksheet name appears in the tab on the screen.

-- 1.5.4   Return to the Worksheets page.
--         In the left navigation bar select Projects, then select Worksheets.

-- 1.5.5   Create a worksheet by loading the SQL file for this lab.
--         From the Worksheets page, in the upper-right corner, click the
--         ellipsis (…) to the left of the blue plus (+) button. Select Create
--         Worksheet from SQL File from the drop-down menu. Then:
--         - Navigate to where you downloaded and unzipped the lab files.
--         - Open the USERS folder, and then open the sub-folder with your
--         username.
--         - Open the file for this lab: 01-introduction-to-snowflake-and-
--         snowflake-objects.sql. A new worksheet will open with the selected
--         SQL file loaded.
--         - Follow the instructions using the PDF workbook for support!
--         Check the name of the worksheet. You will see a new tab to the right
--         of your first worksheet. Observe that the name matches the name of
--         the SQL file that you uploaded. When you open a worksheet from a SQL
--         file, the worksheet takes on the file’s name.

-- 1.5.6   Familiarize yourself with the components of a worksheet.
--         Each worksheet is a session connected to Snowflake. You can have many
--         active worksheets (or sessions) at once. Each worksheet has a
--         context, which defines the default components you are working with
--         during this session.
--         Your context is an important concept to understand. It defines the
--         objects that are being used by default in this session. It consists
--         of a database, a schema, a role, and a virtual warehouse.
--         - The role that is active will impact what objects you can see and
--         what you can do with them.
--         - The warehouse defines what virtual warehouse you will use to run
--         commands.
--         - The database and schema define the default location you are acting
--         in. For example, if you run SELECT * FROM mytable, Snowflake will
--         look for mytable in the database and schema currently set in your
--         context. If you want to select from a table outside your current
--         context, you must provide the full path to that object, for example,
--         SELECT * FROM my_database.my_schema.mytable.
--         Spend a few minutes to orient yourself to the worksheet before
--         beginning.
--         Locate the following components:
--         In the upper left corner, you will see the Snowflake logo and the
--         Home icon. Clicking either will take you back to the home screen.
--         At the top are the tabs for any worksheets you currently have open.
--         If you created the worksheet by loading a SQL file, the worksheet’s
--         name will match the name of the file you loaded. If you just created
--         a blank worksheet, the name will be the date and time the worksheet
--         was created (unless you changed the worksheet name; then that will be
--         displayed).
--         Directly below that is a filter button - ignore this for now.
--         Along the left side is the object browser. There are two tabs - one
--         labeled Databases and the other labeled Worksheets. This identifies
--         whether a list of your worksheets is displayed or if a list of
--         database objects is displayed. You can switch between them to change
--         what is shown in the object browser.
--         The large area on the right is the SQL editor pane. This is where you
--         will run SQL commands.
--         Just above the SQL pane is where you set your default database and
--         schema for this session. You will probably see No Database selected
--         at this point, but once you set your context, you will see the
--         database and schema names.
--         To the right of your namespace (your database and schema) is the
--         Settings option. Click the down arrow to the right to turn on
--         Highlight Statements. All the SQL in a given statement will be
--         highlighted by selecting this.
--         In the upper right corner, you will see a place where your role and
--         virtual warehouse for this session are set. This sets the remainder
--         of your context. You should see FUND_ROLE set for your role and No
--         warehouse selected where the virtual warehouse name will be. You will
--         create and set a virtual warehouse later in this exercise.
--         To the right of that is a Share button - ignore that for now.
--         On the far right is a blue button with a white arrow in it. This is
--         the run button used to run your SQL commands. To the right of the run
--         button is another down arrow. The down arrow lets you Run All
--         statements in your worksheet. You can ignore that for now.

-- 1.5.7   Set your context.
--         Make sure you are in your 01-introduction-to-snowflake-and-snowflake-
--         objects worksheet.
--         If your current role is not set to FUND_ROLE, click on the role that
--         is currently set, and then select FUND_ROLE. Click outside the box to
--         close it.
--         Click on the arrow to the right of your current database and schema
--         (part of your context, which may read currently as No Database
--         selected). A list of available databases appears.
--         Select SNOWBEARAIR_DB as your database and MODELED as your schema.
--         Click outside the box to close it.

-- 1.5.8   Create a virtual warehouse and set it in your context.
--         Before you can run any SQL commands, you need a virtual warehouse.
--         Use the following SQL to create a virtual warehouse and to set it in
--         your context.
--         All the SQL you need to run in this course is inside the .SQL files
--         provided. Scroll down in the first worksheet you created until you
--         find this step in the file. Position your cursor in the command you
--         want to run and either click the run button (the blue button with the
--         white arrow in it) in the top right or, even better, use the keyboard
--         shortcut (CTRL+RETURN for Windows or CMD+RETURN for Mac). This is how
--         you will run SQL commands for the rest of the course. Do not copy and
--         paste from the PDF workbook, as you may get unexpected results.

USE ROLE fund_role;

CREATE OR REPLACE WAREHOUSE INSTRUCTOR1_fund_wh WITH
  WAREHOUSE_SIZE = XSmall 
  INITIALLY_SUSPENDED = true;

USE WAREHOUSE INSTRUCTOR1_fund_wh;

--         If you look in the role/warehouse part of your context, you will now
--         see FUND_ROLE as your role and INSTRUCTOR1_FUND_WH as your virtual
--         warehouse.

-- 1.5.9   Ensure that the Databases tab is selected in the object browser.
--         In the object browser on the left, select the Databases tab.
--         Observe the list of databases that this role has access to.

-- 1.5.10  Change your role to PUBLIC.
--         You can do this with SQL or by clicking in the context menu to the
--         left of the Share button and selecting it there.
--         To change your role with SQL, run this:

USE ROLE public;

--         Look at the object browser on the left, and make sure Databases is
--         selected. You should now see a much shorter list of databases that
--         you have access to. This is an illustration of how your role impacts
--         what you can see and what you can do.
--         When you change your role to PUBLIC, your context may change because
--         the PUBLIC role has access to a limited set of objects.

-- 1.5.11  Change your role back to FUND_ROLE and reset your context.
--         To change your role with SQL, run this:

USE ROLE fund_role;

--         The list of databases should be re-populated with the full list seen
--         before.
--         Set your virtual warehouse and schema.

USE WAREHOUSE INSTRUCTOR1_fund_wh;
USE SCHEMA snowbearair_db.modeled;


-- 1.5.12  Show the tables that are in your current context.

SHOW TABLES;

--         The SHOW command is a metadata operation - so you did not use your
--         virtual warehouse. You can tell that the virtual warehouse is
--         suspended (not running) because the small dot to the left of the
--         virtual warehouse name is gray.
--         You can also see the status of your virtual warehouse by clicking on
--         FUND_ROLE, selecting your virtual warehouse, INSTRUCTOR1_FUND_WH, in the
--         list of warehouses, and finally clicking on the icon to the right of
--         Run on warehouse... All the details for your virtual warehouse will
--         be displayed. To close the virtual warehouse details, click anywhere
--         outside that dialog.

-- 1.5.13  Query some tables.
--         During this course, many of our exercises will use data from the
--         SNOWBEARAIR_DB database. Take a look at some of that data using the
--         two queries below.

SELECT *
FROM members
LIMIT 10;

SELECT TOP 5
    c.c_lastname,
    c.c_firstname,
    c.c_acctbal
FROM snowbearair_db.promo_catalog_sales.customer c
ORDER BY c.c_acctbal DESC;

--         In the second query above, notice that we supplied the full path
--         (database.schema.table) in the FROM clause. This is because our
--         current context is set to snowbearair_db.modeled, and the table we
--         queried is in a different schema.
--         Run another command.

SELECT 
  c_firstname,
  c_lastname,
  o_orderkey,
  o_totalprice
FROM
  promo_catalog_sales.orders
JOIN
  promo_catalog_sales.customer
ON
  o_custkey = c_custkey
ORDER BY o_totalprice DESC
LIMIT 10;

--         In this command, we only provided the schema name
--         (promo_catalog_sales) and the object name (orders) in the FROM
--         clause. This is because our context already has the correct database
--         (snowbearair_db). You can specify the full path, but if the database
--         is correct, you only need to specify the schema.

-- 1.6.0   Create Objects
--         One of the things you may do during your work is create objects, such
--         as databases, schemas, and tables. Let’s create a few objects that
--         you will use during this course.

-- 1.6.1   Create a database called INSTRUCTOR1_fund_db.

CREATE OR REPLACE DATABASE INSTRUCTOR1_fund_db;


-- 1.6.2   Create a schema called my_schema in the database you just created.

CREATE OR REPLACE SCHEMA INSTRUCTOR1_fund_db.my_schema;

USE SCHEMA INSTRUCTOR1_fund_db.my_schema;


-- 1.6.3   Create a table.

CREATE OR REPLACE TABLE my_favorite_actors (name VARCHAR);

--         Now, put a few rows in your table, replacing the placeholder names
--         with the names of your favorite actors.

INSERT INTO my_favorite_actors
VALUES
  ('Heath Ledger'),
  ('Michelle Pfeiffer'),
  ('Meryl Streep'),
  ('Anthony Hopkins'),
  ('Bruce Lee');

--         Check the values in your table.

SELECT * FROM my_favorite_actors;

--         Also, notice that the last two queries DID require a virtual
--         warehouse, so yours automatically started up - the dot next to the
--         virtual warehouse name should now be green. It will auto-suspend
--         itself after some amount of idle time.

-- 1.6.4   Suspend (shut down) your virtual warehouse.

ALTER WAREHOUSE INSTRUCTOR1_fund_wh SUSPEND;

--         Notice that the dot to the left of your virtual warehouse name turns
--         gray (You may have to click on your role FUND_ROLE in the upper right
--         to refresh the color of the warehouse status).
--         The virtual warehouses in the lab environment are configured to shut
--         down after 10 minutes of inactivity. In your work environment, your
--         role may not have the privileges to shut down virtual warehouses.

-- 1.7.0   Set Your User Defaults
--         If you are usually working with objects in the same database and
--         schema and using the same role and virtual warehouse, it is helpful
--         to define your default context. When you open a new session to
--         Snowflake these values will already be set for you.

-- 1.7.1   Run this command to set your defaults:

ALTER USER INSTRUCTOR1 SET
   DEFAULT_ROLE = fund_role
   DEFAULT_WAREHOUSE = INSTRUCTOR1_fund_wh
   DEFAULT_NAMESPACE = INSTRUCTOR1_fund_db.my_schema;


-- 1.8.0   Update Your User Profile
--         In the next steps, you will run a stored procedure to update your
--         user profile. This is necessary because elevated privileges are
--         required to perform this action.

-- 1.8.1   Create variables for your first name, last name and email address.

-- Edit each of the following three lines to add your first name, lastname, and email address.
-- Run the commands to set the variables.
SET myfirstname = 'fname';
SET mylastname = 'lname';
SET myemail = 'fname.lname@company.com';

-- Confirm that the variables are set.
SELECT $myfirstname, $mylastname, $myemail;


-- 1.8.2   Call the stored procedure to update your user profile.
--         You call a stored procedure which runs with elevated privileges that
--         allow you to make the necessary changes.

-- Call the stored procedure to update your user profile
CALL training_db.common.update_profile(current_user(), $myfirstname, $mylastname, $myemail);

-- Confirm that settings have taken effect
DESCRIBE USER INSTRUCTOR1;


-- 1.8.3   Confirm the profile changes via the user menu.
--         Click the user menu in the lower left corner, then select Settings.
--         You may have to refresh your browser if you do not see the changes.
--         Click Resend verification. You should get a verification email to the
--         address that you specified.

-- 1.9.0   Explore Workspaces
--         Workspaces is a new Snowsight feature introduced in August 2025. It
--         provides a unified editor for creating, organizing, and managing code
--         across multiple file types. You can use Workspaces to analyze data
--         and develop models. Workspaces are private to the user and support
--         integration with Git for version control, collaboration, and
--         alignment with existing workflows.
--         Each user has a default workspace called My Workspace that cannot be
--         renamed or deleted. You can upload files or folders from your local
--         machine or create new ones from scratch. You can also work on your
--         Worksheets from within Workspaces.

-- 1.9.1   Go to the Workspaces page.
--         In the left navigation bar select Projects, then select Workspaces.
--         When you go to Workspaces for the first time, you may be prompted to
--         make Workspaces your default SQL editor.
--         Please do not make Workspaces your default. Select Not now. This
--         course uses Worksheets for most of the labs.

-- 1.9.2   Get familiar with the Workspaces interface.
--         You should see the Workspaces Home tab and other panes as seen in the
--         graphic below.
--         Workspaces: Each user has a default workspace called My Workspace
--         that cannot be renamed or deleted. You can create new private
--         workspaces or Git-backed workspaces. You can also create files,
--         folders, and nested subfolders in each workspace and drag files
--         between folders.
--         Worksheets: You can open and edit worksheets you own or have
--         permissions on. You can convert a worksheet into a file in a
--         workspace.
--         Object Explorer: This is similar to the Databases tab of the object
--         explorer in Worksheets.
--         Home tab: Shows keyboard shortcuts and also has the Launch tour
--         button.
--         Query History: You can view the query history of all the queries you
--         have run for the current file or all files in the workspace.
--         You can also hide the side panes and the query history panes.

-- 1.9.3   Take the Workspaces tour.
--         In the Workspaces Home tab, click Launch tour. Click through the
--         tour.

-- 1.9.4   In Workspaces, run queries from an existing worksheet.
--         In the Worksheets pane of Workspaces, expand the Owned folder. You
--         should see two worksheets, Empty Worksheet and 01-introduction-to-
--         snowflake-and-snowflake-objects.
--         Select 01-introduction-to-snowflake-and-snowflake-objects worksheet,
--         the file will open in an editor pane.
--         Scroll down to step 1.9.4 and run the following queries.

USE SCHEMA snowbearair_db.promo_catalog_sales;
--
SELECT 
  c_firstname,
  c_lastname,
  o_orderkey,
  o_totalprice
FROM
  orders
JOIN
  customer
ON
  o_custkey = c_custkey
ORDER BY o_totalprice DESC
LIMIT 10;

--         Observe that the result pane opens to show the output.

-- 1.9.5   Use Copilot inline to modify the query to show top 100 customers in
--         America.
--         Make sure your cursor is in the previous query and open Copilot
--         inline. Use the CMD+I (MacOS) or CTRL+I (Windows) keyboard shortcut.
--         Type in the suggested prompt and send it to Copilot: Modify the query
--         to show the top 100 customers in america, based on revenue. Include
--         the full name in one column, and order date. Also add comments to
--         explain the logic used for the query.
--         Review the suggested query. Click Accept and then run the query.

-- 1.9.6   Optional - Create a new SQL file from scratch in My Workspace.
--         In the My Workspace pane, click + Add new, then select SQL File.
--         Name the file fundtest and press Enter.
--         The new empty fundtest.sql file opens in a new Workspaces tab.
--         Observe that this file has the default context that you set in an
--         earlier step in this lab.

-- 1.9.7   Optional - Split the pane so that you can see the new SQL file and
--         the open worksheet side-by-side.
--         Click the gear icon in the top right of the Workspaces page and
--         select Split Pane.
--         You should see the open worksheet and the new SQL file side-by-side.

-- 1.9.8   Optional - Run a few queries in the new SQL file.
--         Try running a few queries in the new SQL file.

-- 1.10.0  Key Takeaways
--         - You are ready to use Snowsight for your day-to-day Snowflake
--         operations.
--         - You can create database objects using the Snowsight UI and by
--         executing SQL code in a worksheet. We did this exercise using SQL
--         code.
--         - You can browse database objects and view their details by using the
--         object browser in the worksheet.
--         - The context of a worksheet session consists of a role, virtual
--         warehouse, database, and schema.
--         - The context of a worksheet can be set via the Snowsight UI or SQL
--         statements.
--         - Workspaces is a unified editor for creating, organizing, and
--         managing code across multiple file types.
