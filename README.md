# MSSQL Local Testing Setup 🐳

This project helps you spin up a **Microsoft SQL Server** instance using Docker for local development or testing purposes.

---

## 🚀 Getting Started

### 1. Prerequisites
- [Docker](https://www.docker.com/) installed and running on your machine
- `docker compose` installed

### 2. Start the SQL Server

```bash
docker compose up -d
```

This will:
- Start a SQL Server 2022 container
- Expose port **1433** for local access
- Persist data in a named Docker volume `mssql-data`

---

## 📁 Files Overview

### `docker-compose.yml`
Defines and runs a SQL Server 2022 instance using the official Microsoft image.

### `ddl.sql`
Contains all the **DDL statements** to create the database schema:
- `Kurs` table
- `Teilnehmer` table
- `Teilnahme` table
- Includes foreign keys and primary keys based on the example data model

### `dml.sql`
Contains all the **DML statements** to populate the tables with example data:
- Sample courses, participants, and participation records

---

## 🛠 How to Apply SQL Files

You can execute the SQL scripts using any SQL tool that supports MSSQL, for example:

### Using Azure Data Studio or DBeaver:
1. Connect to `localhost:1433`
2. Use the following credentials:
   - **User**: `sa`
   - **Password**: `YourStrong!Passw0rd`
3. Open and run `ddl.sql` to create tables
4. Open and run `dml.sql` to insert data

### Using Docker CLI:
```bash
docker exec -i mssql-test /opt/mssql-tools/bin/sqlcmd \
  -S localhost -U sa -P "YourStrong!Passw0rd" -d master -i /path/in/container/ddl.sql
```

Replace `/path/in/container/ddl.sql` with the mounted path inside the container.

> 💡 You can also mount the `sql` folder into the container and run the scripts automatically if desired.

---

## 🧼 Cleanup

To stop and remove the container:

```bash
docker compose down
```

To also remove the volume:

```bash
docker compose down -v
```

---
