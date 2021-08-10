const purgecss = require('@fullhuman/postcss-purgecss')
const cssnano = require('cssnano')



let environment = {
  plugins: [
    require('tailwindcss')('./app/javascript/stylesheets/tailwind.config.js'),
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    }),
    
    
    process.env.NODE_ENV === 'production' ? require('autoprefixer') : null,
    process.env.NODE_ENV === 'production'
      ? cssnano({ preset: 'default' })
      : null,
    purgecss({
      content: ['./layouts/**/*.html', './src/**/*.vue', './src/**/*.jsx'],
      defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
    })


  ]
};

// if (process.env.RAILS_ENV === 'production') {
//   environment.plugins.push(
//     require('@fullhuman/postcss-purgecss')({
//       content: [
//         './app/**/.html.erb',
//         './app/helpers/**/*.rb',
//         './app/javascript/**/*.js',
//         './app/javascript/**/*.vue',
//         './app/javascript/**/*.jsx',
//       ],
//       defaultExtractor: (content) => content.match(/[A-Za-z0-9-_:/]+/g) || []
//     })
//   )
// }

module.exports = environment;