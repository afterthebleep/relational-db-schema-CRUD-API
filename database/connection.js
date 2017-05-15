const pgp = require('pg-promise')()

const connection = {
  host: 'localhost',
  port: 5432,
  database: 'languid_crane'
}

const db = pgp(connection)

module.exports = { db }
