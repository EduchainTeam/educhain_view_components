const defaultTheme = require('tailwindcss/defaultTheme')
module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}', 
    './app/components/educhain/**/*.{rb,erb,haml,html,slim}', 
    './previews/educhain/**/*.{rb,erb,haml,html,slim}'    
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        transparent: "transparent",
        current: "currentColor",

        // Primary palette
        "solidus-red": "#ef3023",
        black: "#222222",
        graphite: "#c7ccc7",
        "graphite-light": "#d8dad8",
        sand: "#f5f3f0",
        white: "#ffffff",

        // Secondary palette
        yellow: "#fdc071",
        orange: "#f68050",
        blue: "#2554b1",
        moss: "#2d3925",
        forest: "#096756",
        midnight: "#163449",
        pink: "#f6d7e2",
        plum: "#3a0e31",
        sky: "#cbdff1",
        seafoam: "#c1e0de",
        dune: "#e6bf9b",
        "full-black": "#000000",

        // Extra colors (not part of the original palette)
        "papaya-whip": "#f9e3d9",

        // UI Red
        red: {
          100: "#f8d6d3",
          200: "#f1ada7",
          300: "#ea8980",
          400: "#e36054",
          500: "#dc3728",
          600: "#b12c20",
          700: "#862219",
          800: "#561610",
          900: "#2b0b08",
        },

        // Grayscale
        gray: {
          15: "#fafafa",
          25: "#f5f5f5",
          50: "#f0f0f0",
          100: "#dedede",
          200: "#cfcfcf",
          300: "#bababa",
          400: "#a3a3a3",
          500: "#737373",
          600: "#616161",
          700: "#4a4a4a",
          800: "#333333",
        },
      },
      borderRadius: {
        sm: "4px",
      },
      boxShadow: {
        sm: "0px 1px 2px 0px rgba(0, 0, 0, 0.04)",
        base: "0px 4px 8px 0px rgba(0, 0, 0, 0.08), 0px 2px 4px -1px rgba(0, 0, 0, 0.04)",
      },     
    },
  },
  plugins: [
    require('@tailwindcss/forms'),   
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}