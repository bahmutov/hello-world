const axios = require('axios')
const snapshot = require('snap-shot-it')

/* eslint-env mocha */
it('greets me', () => {
  const port = process.env.PORT || 1337
  const url = process.env.NOW || `http://localhost:${port}`
  return axios(url)
    .then(r => r.data)
    .then(snapshot)
})
