


##  ** MONGODB MASTER COMMAND & SYNTAX TABLE**

Below is your **comprehensive MongoDB command reference table**, similar to a “SQL master table” — but for **MongoDB shell and driver-level commands**.

| **Category**        | **Command / Syntax**                                      | **Description**                | **Example**                                                                            | **Use Case**                | **Real-World Scenario**             |
| ------------------- | --------------------------------------------------------- | ------------------------------ | -------------------------------------------------------------------------------------- | --------------------------- | ----------------------------------- |
| **Database**        | `show dbs`                                                | Lists all databases            | `show dbs`                                                                             | Checking existing databases | View all databases on server        |
|                     | `use <db>`                                                | Switch to or create a database | `use shopDB`                                                                           | Create or connect to DB     | Create database for e-commerce site |
|                     | `db.dropDatabase()`                                       | Delete current database        | `db.dropDatabase()`                                                                    | Remove test DB              | Clean up unused test DB             |
| **Collection**      | `db.createCollection(name)`                               | Creates collection             | `db.createCollection("users")`                                                         | Create table equivalent     | Create collection for user data     |
|                     | `show collections`                                        | Lists collections in DB        | `show collections`                                                                     | View existing collections   | Check tables in current DB          |
|                     | `db.collection.drop()`                                    | Drops collection               | `db.users.drop()`                                                                      | Remove obsolete collection  | Delete old logs collection          |
| **Insert (Create)** | `insertOne()`                                             | Insert one document            | `db.users.insertOne({name:"John",age:25})`                                             | Add single record           | Insert one new user                 |
|                     | `insertMany()`                                            | Insert multiple docs           | `db.users.insertMany([{name:"A"}, {name:"B"}])`                                        | Bulk insert                 | Load bulk data from CSV             |
| **Read (Query)**    | `find()`                                                  | Retrieve documents             | `db.users.find({age:{$gt:20}})`                                                        | Get filtered records        | Get users older than 20             |
|                     | `findOne()`                                               | Get one matching doc           | `db.users.findOne({name:"John"})`                                                      | Single fetch                | Get one user by name                |
|                     | `.projection`                                             | Select specific fields         | `db.users.find({}, {name:1, _id:0})`                                                   | Field selection             | Get names only for UI list          |
| **Update**          | `updateOne()`                                             | Update one document            | `db.users.updateOne({name:"John"}, {$set:{age:30}})`                                   | Modify a single record      | Update user’s age                   |
|                     | `updateMany()`                                            | Update multiple docs           | `db.users.updateMany({}, {$set:{active:true}})`                                        | Bulk modify                 | Mark all users active               |
|                     | `replaceOne()`                                            | Replace an entire doc          | `db.users.replaceOne({name:"John"}, {name:"John", age:30})`                            | Overwrite data              | Replace outdated record             |
| **Delete**          | `deleteOne()`                                             | Delete one doc                 | `db.users.deleteOne({name:"John"})`                                                    | Remove one record           | Delete user account                 |
|                     | `deleteMany()`                                            | Delete many docs               | `db.users.deleteMany({active:false})`                                                  | Bulk delete                 | Remove inactive users               |
| **Query Operators** | `$eq`, `$ne`, `$gt`, `$lt`, `$gte`, `$lte`, `$in`, `$nin` | Comparison ops                 | `db.products.find({price:{$gt:100}})`                                                  | Filtering                   | Find all products > ₹100            |
|                     | `$and`, `$or`, `$not`, `$nor`                             | Logical ops                    | `db.users.find({$and:[{age:{$gt:18}}, {active:true}]})`                                | Complex filtering           | Find adult active users             |
|                     | `$exists`, `$type`                                        | Element check                  | `db.users.find({email:{$exists:true}})`                                                | Field presence              | Check if email field exists         |
|                     | `$regex`, `$text`                                         | Text search                    | `db.users.find({name:/John/i})`                                                        | Pattern matching            | Search user by name substring       |
| **Array Operators** | `$all`, `$size`, `$elemMatch`, `$push`, `$pull`           | Handle arrays                  | `db.students.find({grades:{$elemMatch:{score:{$gt:80}}}})`                             | Array queries               | Find students with >80 marks        |
| **Aggregation**     | `$match`                                                  | Filter documents               | `{ $match: { status: "A" }}`                                                           | Pipeline filtering          | Filter active orders                |
|                     | `$group`                                                  | Group docs                     | `{ $group: {_id:"$status", count:{$sum:1}}}`                                           | Aggregation                 | Count users per status              |
|                     | `$project`                                                | Reshape output                 | `{ $project: { name:1, total:{$sum:"$price"} }}`                                       | Projection                  | Return custom fields                |
|                     | `$sort`, `$limit`, `$skip`                                | Sorting/pagination             | `{ $sort: {price:-1}}`                                                                 | Order data                  | Show top 10 products                |
|                     | `$lookup`                                                 | Join collections               | `{ $lookup: { from:"orders", localField:"_id", foreignField:"user_id", as:"orders" }}` | Data join                   | Join users with orders              |
|                     | `$unwind`                                                 | Deconstruct arrays             | `{ $unwind: "$orders" }`                                                               | Expand arrays               | Flatten orders per user             |
| **Indexing**        | `createIndex()`                                           | Create index                   | `db.users.createIndex({email:1})`                                                      | Optimize queries            | Faster lookups by email             |
|                     | `dropIndex()`                                             | Remove index                   | `db.users.dropIndex("email_1")`                                                        | Cleanup                     | Remove unused index                 |
|                     | `getIndexes()`                                            | View indexes                   | `db.users.getIndexes()`                                                                | Check                       | Audit index setup                   |
| **Transactions**    | `startSession()`                                          | Start session                  | `session = db.getMongo().startSession()`                                               | Transaction start           | Begin multi-doc operation           |
|                     | `startTransaction()` / `commitTransaction()`              | Begin/commit                   | `session.startTransaction(); ... session.commitTransaction();`                         | Atomic operation            | Banking transfer                    |
| **Admin & Backup**  | `mongodump`, `mongorestore`                               | Backup/restore DB              | `mongodump --db testDB`                                                                | Backup & restore            | Regular DB maintenance              |
|                     | `db.createUser()`                                         | Create user                    | `db.createUser({user:"admin",pwd:"pass",roles:["readWrite"]})`                         | Add roles                   | Secure app DB                       |
| **Utilities**       | `explain()`                                               | Analyze query performance      | `db.users.find({age:{$gt:30}}).explain("executionStats")`                              | Debug                       | Find slow queries                   |
|                     | `stats()`                                                 | Show collection stats          | `db.users.stats()`                                                                     | Monitor                     | Check DB size usage                 |

---

##  **Real-Time Scenarios**

| **Scenario**                   | **Concept Used**           | **Description**                          |
| ------------------------------ | -------------------------- | ---------------------------------------- |
| **User authentication system** | CRUD, Indexing             | Fast login lookups using indexed email   |
| **E-commerce analytics**       | Aggregation, $group, $sort | Monthly sales, best-selling products     |
| **Banking transactions**       | Transactions               | Money transfer with rollback support     |
| **Chat application**           | Embedding, $unwind         | Messages stored in nested array of chats |
| **Inventory management**       | Aggregation, Indexing      | Find low-stock items, reorder alerts     |
| **Social feed system**         | Data modeling, $lookup     | Join user-post-comment collections       |

---


