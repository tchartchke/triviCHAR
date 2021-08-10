const purgecss = [
  "@fullhuman/postcss-purgecss",
  {
    content: ["./components/**/*.js", "./pages/**/*.js"],
    defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
  }
];
module.exports = {
  plugins: [
    require('tailwindcss')("./app/javascript/stylesheets/tailwind.config.js"),
    require('postcss-import'),
    require('tailwindcss/colors'),
    require('postcss-flexbugs-fixes'),
    // require("autoprefixer"),
    // require('postcss-preset-env')({
    //   autoprefixer: {
    //     flexbox: 'no-2009'
    //   },
    //   stage: 3
    // }),
    ...(process.env.NODE_ENV === "production" ? [purgecss] : [])
  ]
}
