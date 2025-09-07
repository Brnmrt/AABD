# MyDelivery: An Oracle-Based Logistics Management System

## Overview

MyDelivery is a comprehensive database project that models and manages the logistics of a transportation company specializing in product and parcel delivery. Developed using Oracle SQL and PL/SQL, this system handles the entire logistics chain, from order registration and collection to transportation, storage, and final delivery.

This project demonstrates a deep understanding of relational database architecture, data modeling, and advanced database programming. It was developed as a practical assignment for the "Database Architecture and Administration" course, showcasing skills in creating a robust, efficient, and scalable database solution for a real-world scenario.

## Features

The system is designed to support the operational and management needs of a logistics company, including:

* **Order Management:**
    * Registration of transport requests with different service levels (e.g., Urgent, Normal, Economic).
    * Tracking of order status throughout the delivery lifecycle (e.g., awaiting pickup, in warehouse, in transit, delivered).
    * Functionality to cancel or return orders based on business rules.

* **Logistics and Operations:**
    * Management of a fleet of vehicles, including specialized trucks for different types of goods (e.g., refrigerated, live animals).
    * Coordination of a network of logistical warehouses.
    * Planning and creation of both regular and punctual trips between warehouses.
    * Dynamic allocation of orders to trips based on urgency, destination, and available vehicle capacity.

* **Advanced Business Logic:**
    * **Automated Triggers:** Implementation of triggers to ensure data integrity and automate processes, such as updating warehouse capacity upon loading/unloading (`CARREGA_DE_ARMAZEM`, `DESCARREGA_NO_ARMAZEM`) and updating vehicle status (`ALTERA_VEICULO`).
    * **Stored Procedures:** A suite of PL/SQL procedures to encapsulate complex business operations like creating punctual trips (`CRIA_VIAGEM_PONTUAL`), altering routes (`ALTERA_ROTA`), and handling returned orders (`DEVOLVE_PEDIDO`).
    * **Custom Functions:** Functions to perform critical calculations, such as finding the next available trip with sufficient space (`PROXIMA_VIAGEM_COM_ESPACO`) or checking warehouse capacity (`TEM_CAPACIDADE_PARA_ARMAZENAR`).

* **Reporting and Analytics:**
    * A comprehensive set of SQL Views to generate detailed and aggregated reports for management, covering aspects like:
        * Tracking specific orders and their journey (`VIEW_B`).
        * Monitoring warehouse inventory and pending orders (`VIEW_C`, `VIEW_D`).
        * Analyzing delivery times and efficiency (`VIEW_J`, `VIEW_K`).
        * Assessing vehicle usage and performance (`VIEW_H`).

## Database Schema

The database is designed following the Entity-Relationship (ER) model, normalized to ensure data integrity and minimize redundancy. The schema includes tables for managing key entities such as `Cliente` (Customer), `Pedido` (Order), `Veiculo` (Vehicle), `Viagem` (Trip), `Armazem` (Warehouse), and `Motorista` (Driver).

**(Opcional: Pode adicionar aqui uma das imagens do seu diagrama de base de dados para uma melhor visualização)**
*Conceptual Model:*
![Conceptual Diagram](brnmrt/aabd/AABD-d4c88e54bbe1d11d4ff9b608d30122ef11fafb96/Meta1/Conceptual.jpg)

*Physical Model:*
![Physical Diagram](brnmrt/aabd/AABD-d4c88e54bbe1d11d4ff9b608d30122ef11fafb96/Meta2/Modelo_Fisico_G23.pdf)

## Key Technical Implementations

This project highlights proficiency in advanced Oracle database features:

* **PL/SQL Stored Procedures and Functions:** Complex business logic is encapsulated in stored procedures and functions to ensure modularity and reusability. Examples include:
    * `ALTERA_ROTA`: Dynamically changes a trip's route to accommodate new pickups, creating a new subsequent trip to the original destination.
    * `DEVOLVE_PEDIDO`: Manages the entire process of a returned order by creating a new return order and scheduling it on the inverse route.
    * `P_FUNC_2022147149`: Calculates performance bonuses for drivers based on the total distance driven in a quarter.

* **Triggers for Data Integrity:** Triggers are used to enforce complex business rules that cannot be handled by simple constraints. For example:
    * `UPSTATUS_ENTREGA`: Automatically updates an order's status to "Delivered" and adjusts the warehouse's available capacity accordingly.
    * `ALTERA_VEICULO`: If a trip's occupancy exceeds 95%, this trigger attempts to swap the assigned vehicle with a larger one to bring the occupancy below 80%.

* **Advanced SQL Queries and Views:** The project includes a wide range of analytical queries, materialized as views, to provide valuable business intelligence. For instance, `VIEW_K` calculates the weekly percentage variation in average delivery times for different merchandise types.

## How to Use

To set up the database and explore the project:

1.  **Environment:** Ensure you have an Oracle Database instance.
2.  **Schema Creation:** Run the DDL script from `Meta2/insercao_de_dados_e_vistas_G23.sql` to create all the tables, views, and constraints.
3.  **Data Population:** The same script contains `INSERT` statements to populate the database with sample data.
4.  **PL/SQL Objects:** Run the script `Meta3/G23_Meta3.sql` to create all the procedures, functions, and triggers.
5.  **Exploration:** You can now query the tables and views or execute the procedures and functions to test the system's logic.
