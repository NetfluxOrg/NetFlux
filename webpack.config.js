const path = require('path');

module.exports = {
  entry: path.join(__dirname, 'client/src/index.jsx'),
  output: {
    filename: 'bundle.js',
    path: path.join(__dirname, 'client/dist')
  },

  module: {
    rules: [
      {
        test: /\.css$/i,
        use: ["style-loader", "css-loader"],
      },
      {
        test: /\.jsx?/,
        exclude: /node_modules/,
        use: 'babel-loader'
      },
      {
        test: /\.scss$/,
          use: [{
            loader: "style-loader"
          }, {
            loader: "css-loader"
          }]
    },
    ],
  },

};
