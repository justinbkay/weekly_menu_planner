process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

const sassLoader = environment.loaders.get('sass')
const sassEl = sassLoader.use.find((element) => {
  return element.loader === 'sass-loader'
})

module.exports = environment.toWebpackConfig()
