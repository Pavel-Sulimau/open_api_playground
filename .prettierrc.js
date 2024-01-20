module.exports = {
  plugins: [
    // Fixes https://github.com/prettier/prettier/issues/2716.
    "./node_modules/prettier-plugin-multiline-arrays/dist/index.js",
  ],
  tabWidth: 2,
  multilineArraysWrapThreshold: 0,
};
