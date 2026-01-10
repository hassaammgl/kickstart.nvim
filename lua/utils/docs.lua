local function open_url(url)
  vim.fn.jobstart({ "xdg-open", url }, { detach = true })
end

return {
  react = function()
    open_url("https://react.dev")
  end,
  nextjs = function()
    open_url("https://nextjs.org/docs")
  end,
  mdn = function()
    open_url("https://developer.mozilla.org")
  end,
  tailwind = function()
    open_url("https://tailwindcss.com/docs")
  end,
  vue = function()
    open_url("https://vuejs.org/")
  end,
  nuxt = function()
    open_url("https://nuxt.com/docs")
  end,
  angular = function()
    open_url("https://angular.io/docs")
  end,
  svelte = function()
    open_url("https://svelte.dev/docs")
  end,
  node = function()
    open_url("https://nodejs.org/en/docs/")
  end,
  express = function()
    open_url("https://expressjs.com/")
  end,
  nest = function()
    open_url("https://docs.nestjs.com/")
  end,
  prisma = function()
    open_url("https://www.prisma.io/docs/")
  end,
  postgres = function()
    open_url("https://www.postgresql.org/docs/")
  end,
  mongo = function()
    open_url("https://www.mongodb.com/docs/")
  end,
  graphql = function()
    open_url("https://graphql.org/learn/")
  end,
  redux = function()
    open_url("https://redux.js.org/")
  end,
  zustand = function()
    open_url("https://docs.pmnd.rs/zustand")
  end,
  jotai = function()
    open_url("https://jotai.org/docs/introduction")
  end,
  chakra = function()
    open_url("https://chakra-ui.com/docs")
  end,
  mui = function()
    open_url("https://mui.com/material-ui/getting-started/overview/")
  end,
  ant = function()
    open_url("https://ant.design/docs/react/introduce")
  end,
  vite = function()
    open_url("https://vitejs.dev/")
  end,
  webpack = function()
    open_url("https://webpack.js.org/concepts/")
  end,
  eslint = function()
    open_url("https://eslint.org/docs/latest/")
  end,
  prettier = function()
    open_url("https://prettier.io/docs/en/")
  end,
  storybook = function()
    open_url("https://storybook.js.org/docs/react/get-started/introduction")
  end,
  bootstrap = function()
    open_url("https://getbootstrap.com/docs/5.3/getting-started/introduction/")
  end,
  framer = function()
    open_url("https://www.framer.com/motion/")
  end,
  headlessui = function()
    open_url("https://headlessui.com/")
  end,
  stitches = function()
    open_url("https://stitches.dev/docs")
  end,
  radix = function()
    open_url("https://www.radix-ui.com/docs/primitives/overview/introduction")
  end,
  mobx = function()
    open_url("https://mobx.js.org/README.html")
  end,
  rollup = function()
    open_url("https://rollupjs.org/guide/en/")
  end,
  jest = function()
    open_url("https://jestjs.io/docs/getting-started")
  end,
  testinglib = function()
    open_url("https://testing-library.com/docs/react-testing-library/intro/")
  end,
  cypress = function()
    open_url("https://www.cypress.io/docs/")
  end,
  tailwindui = function()
    open_url("https://tailwindui.com/documentation")
  end,
}
