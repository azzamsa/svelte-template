const production = !process.env.ROLLUP_WATCH

const config = {
  mode: "jit",
  purge: {
    content: ["./src/**/*.svelte"],
    enabled: production,
  },

  theme: {
    extend: {},
  },

  plugins: [],
}

module.exports = config
