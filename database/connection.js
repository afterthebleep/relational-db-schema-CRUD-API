const pgp = require('pg-promise')()

const connection = {
  localhost: '3000',
  host: '5432',
  database: 'languid_crane'
}

const db = pgp(connection)

module.exports = { db }
