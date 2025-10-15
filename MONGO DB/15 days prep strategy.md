**MongoDB Mastery Curriculum (Beginner → Expert)** into a **15-Day Intensive Mastery Schedule**, designed for **daily hands-on learning** with **topics, subtopics, activities, and projects** that cover *every concept* from the full syllabus.
**progressive pyramid structure** → Foundations → CRUD & Modeling → Aggregation → Performance → Replication & Sharding → Cloud + Integration → Capstone.

---

#  **15-Day MongoDB Mastery Schedule (Beginner → Expert)**

| **Day**    | **Topics & Subtopics**                                                                                                                                                                                                                                               | **Hands-on / Activity / Project**                                                                                                            | **Goal / Outcome**                                            |
| ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| **Day 1**  | **Introduction to NoSQL & MongoDB** <br> - SQL vs NoSQL<br> - Why MongoDB?<br> - MongoDB Ecosystem & Architecture<br> - Documents, Collections, Databases<br> - BSON vs JSON<br> - Installing MongoDB, mongosh, Compass, Atlas setup                                 |  Install MongoDB locally and on Atlas Cloud <br>  Explore Compass UI <br>  Create your first database and collection                      | Understand MongoDB basics, structure, and ecosystem           |
| **Day 2**  | **MongoDB Architecture & Fundamentals** <br> - Storage Engine (WiredTiger)<br> - Journaling, Write Ahead Log<br> - Data Representation & ObjectId<br> - Schema-Free Design Philosophy                                                                                |  Activity: Visualize MongoDB architecture diagram<br> Try inserting sample JSON data using mongosh                                       | Clear understanding of how MongoDB stores & manages data      |
| **Day 3**  | **CRUD Operations (Core)** <br> - `insertOne`, `insertMany`<br> - `find`, `findOne`, Query Operators (`$eq`, `$gt`, `$in`, `$and`, `$or`)<br> - `updateOne`, `$set`, `$inc`, `$push`<br> - `deleteOne`, `deleteMany`<br> - Projection, Sorting, Limiting, Pagination |  Mini Project: **Library System / To-Do CRUD App** <br> Create, read, update, and delete documents                                         | Master CRUD operations and query filters                      |
| **Day 4**  | **Data Modeling Basics** <br> - Embedding vs Referencing<br> - Relationships (1:1, 1:N, N:N)<br> - Schema Design Patterns<br> - BSON Data Types<br> - Primary Key (`_id`)                                                                                            |  Design schemas for: **E-commerce App** (Users, Orders, Products) <br> Visualize models in Compass                                         | Build a strong foundation in schema design                    |
| **Day 5**  | **Data Import, Export & Shell Tools** <br> - mongoimport/export<br> - mongodump/restore<br> - JSON/CSV/BSON data import<br> - Backups & Restores                                                                                                                     |  Import public dataset (e.g., movies.csv) into MongoDB<br>Perform dump & restore operations                                                | Learn backup/restore & bulk import operations                 |
| **Day 6**  | **Advanced Data Modeling** <br> - Denormalization vs Normalization<br> - Bucket, Outlier, Attribute Patterns<br> - Time-Series & GeoJSON Modeling                                                                                                                    |  Design & implement time-series model (IoT sensor data)<br> Create sample geolocation dataset                                           | Understand modeling for large-scale, analytical, and geo data |
| **Day 7**  | **Indexing & Query Optimization** <br> - Index Types (Single, Compound, Text, Hashed, TTL, Partial)<br> - `createIndex`, `getIndexes`<br> - Query Profiler, Explain Plans<br> - Covered Queries, Index Intersection                                                  |  Task: Optimize product search queries with compound and text indexes<br> Analyze with `explain("executionStats")`                       | Gain ability to optimize queries and reduce execution time    |
| **Day 8**  | **Aggregation Framework (I)** <br> - `$match`, `$group`, `$project`, `$sort`, `$limit`<br> - `$unwind`, `$lookup` (joins)<br> - Expressions & Operators (`$sum`, `$avg`, `$addFields`)                                                                               |  Activity: Perform analytics on `orders` dataset (revenue, top products)<br> Build pipeline using `$lookup` joins                        | Gain analytical capability using pipelines                    |
| **Day 9**  | **Aggregation Framework (II) + Transactions** <br> - `$out`, `$merge`, `$set`<br> - Nested Pipelines, Expressions<br> - Multi-Document Transactions<br> - Retryable Writes, Read Concerns                                                                            |  Project: **Sales Analytics Dashboard** using Aggregations<br> Implement transaction example (order creation + inventory update)         | Master complex aggregation + atomic transactions              |
| **Day 10** | **Security, Authentication & RBAC** <br> - SCRAM, x.509, LDAP<br> - Role-Based Access Control<br> - Field-Level Encryption<br> - Encryption at Rest/In-Transit                                                                                                       |  Setup users with read/write roles<br>Configure SSL for local MongoDB<br>Simulate admin vs analyst roles                                   | Learn to secure MongoDB deployments                           |
| **Day 11** | **Replication & High Availability** <br> - Replica Set Architecture<br> - Oplog & Failover<br> - Write Concerns, Read Preferences<br> - Hidden & Delayed Members<br> - Backups in Replica Sets                                                                       |  Create a 3-node local replica set<br>Test automatic failover scenario                                                                     | Understand redundancy, fault tolerance, and HA                |
| **Day 12** | **Sharding & Scalability** <br> - Sharding Concepts<br> - Config Servers & Mongos<br> - Choosing Shard Keys<br> - Hashed vs Ranged Sharding<br> - Resharding                                                                                                         |  Deploy test sharded cluster<br>Shard dataset (e.g., users by region)<br>Observe balancing operations                                      | Learn how MongoDB scales horizontally                         |
| **Day 13** | **Performance, Monitoring & Automation** <br> - Query Profiler, Logs, Metrics<br> - Prometheus + Grafana Setup<br> - Bulk Operations (`bulkWrite`)<br> - Scripting with PyMongo / Mongoose<br> - Connection Pooling, Caching                                         |  Automate CRUD tasks using PyMongo<br> Setup basic Grafana dashboard for Mongo metrics                                                   | Understand monitoring and backend integration                 |
| **Day 14** | **Cloud, BI & Integration** <br> - MongoDB Atlas Deep Dive<br> - Atlas Search, Triggers, Functions<br> - BI Connector, Atlas Charts<br> - Integration with Power BI / Tableau / Spark<br> - Docker + Kubernetes Deployment                                           |  Create Atlas Cluster, use Atlas Charts<br> Connect MongoDB to Power BI/Tableau<br> Dockerize MongoDB service                          | Integrate MongoDB in analytics & cloud workflows              |
| **Day 15** | **Capstone & Expert-Level Patterns** <br> - Schema Patterns: Bucket, Extended Ref, Computed, Tree<br> - MongoDB with Kafka Streams<br> - AI/ML Pipelines with MongoDB<br> - MongoDB System Design & Interview Scenarios                                              |  Capstone Project: **AI-Powered Analytics Dashboard** (FastAPI + MongoDB + Kafka + Atlas Charts)<br> Review system design & interview Qs | Attain industry-ready MongoDB developer & data analyst level  |

---

#  **Capstone Project**

**Title:** Real-Time Data Analytics Dashboard
**Tech Stack:** FastAPI / Node.js + MongoDB + Kafka + Atlas + Power BI
**Key Features:**

* User Authentication (RBAC)
* CRUD for Orders & Products
* Aggregation-based Reports
* Real-Time Stream (Kafka → MongoDB)
* Visualization (Atlas Charts or Power BI)

---

#  **Post-Completion Mastery level**

| **Skill Domain**             | **Proficiency Level Achieved** | **Outcome**                    |
| ---------------------------- | ------------------------------ | ------------------------------ |
| MongoDB Fundamentals         |  Advanced                     | Full CRUD, Schema Design, BSON |
| Aggregation Framework        |  Expert                       | BI & Analytics Ready           |
| Replication & Sharding       |  Advanced                     | Distributed System Competence  |
| Performance & Monitoring     |  Advanced                     | Query Optimization, Profiling  |
| Cloud + Integration          |  Expert                       | Atlas, Docker, BI Tools        |
| Data Engineering Integration |  Expert                       | Kafka, Spark, AI Pipelines     |

---

