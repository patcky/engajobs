const webpackConfig = require("./base");
const { merge } = require("@rails/webpacker");
const chokidar = require("chokidar");

process.env.NODE_ENV = process.env.NODE_ENV || 'production'

// Hot reload views via webpack dev server. https://github.com/rails/webpacker/issues/1879.
// However, CI system tests may choke on this since NODE_ENV is  'development' in tests.
// So check for RAILS_ENV and skip hot reload in testing.
module.exports =
  process.env.RAILS_ENV == "development"
    ? merge(webpackConfig, {
        devServer: {
          before: (app, server) => {
            chokidar
              .watch([
                "config/locales/*.yml",
                "app/views/**/*.md",
                "app/views/**/*.html.erb",
                "app/views/**/*.html.haml",
              ])
              .on("change", () =>
                server.sockWrite(server.sockets, "content-changed")
              );
          },
        },
      })
    : webpackConfig;
