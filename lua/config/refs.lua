local docs = require("utils.docs")

-- Frameworks
vim.keymap.set("n", "<C-g>r", docs.react, { desc = "React Docs" })
vim.keymap.set("n", "<C-g>n", docs.nextjs, { desc = "Next.js Docs" })
vim.keymap.set("n", "<C-g>v", docs.vue, { desc = "Vue Docs" })
vim.keymap.set("n", "<C-g>x", docs.nuxt, { desc = "Nuxt Docs" })
vim.keymap.set("n", "<C-g>a", docs.angular, { desc = "Angular Docs" })
vim.keymap.set("n", "<C-g>s", docs.svelte, { desc = "Svelte Docs" })

-- Node / Backend
vim.keymap.set("n", "<C-g>j", docs.node, { desc = "Node.js Docs" })
vim.keymap.set("n", "<C-g>e", docs.express, { desc = "Express Docs" })
vim.keymap.set("n", "<C-g>k", docs.nest, { desc = "NestJS Docs" })
vim.keymap.set("n", "<C-g>p", docs.prisma, { desc = "Prisma Docs" })
vim.keymap.set("n", "<C-g>g", docs.postgres, { desc = "PostgreSQL Docs" })
vim.keymap.set("n", "<C-g>o", docs.mongo, { desc = "MongoDB Docs" })
vim.keymap.set("n", "<C-g>q", docs.graphql, { desc = "GraphQL Docs" })

-- UI / CSS Libraries
vim.keymap.set("n", "<C-g>t", docs.tailwind, { desc = "Tailwind Docs" })
vim.keymap.set("n", "<C-g>c", docs.chakra, { desc = "Chakra UI Docs" })
vim.keymap.set("n", "<C-g>l", docs.mui, { desc = "Material UI Docs" })
vim.keymap.set("n", "<C-g>i", docs.ant, { desc = "Ant Design Docs" })
vim.keymap.set("n", "<C-g>b", docs.bootstrap, { desc = "Bootstrap Docs" })
vim.keymap.set("n", "<C-g>f", docs.framer, { desc = "Framer Motion Docs" })
vim.keymap.set("n", "<C-g>h", docs.headlessui, { desc = "Headless UI Docs" })
vim.keymap.set("n", "<C-g>y", docs.stitches, { desc = "Stitches Docs" })
vim.keymap.set("n", "<C-g>u", docs.radix, { desc = "Radix UI Docs" })

-- State Management
vim.keymap.set("n", "<C-g>d", docs.redux, { desc = "Redux Docs" })
vim.keymap.set("n", "<C-g>z", docs.zustand, { desc = "Zustand Docs" })
vim.keymap.set("n", "<C-g>j", docs.jotai, { desc = "Jotai Docs" })
vim.keymap.set("n", "<C-g>m", docs.mobx, { desc = "MobX Docs" })

-- Build Tools / Bundlers
vim.keymap.set("n", "<C-g>f", docs.vite, { desc = "Vite Docs" })
vim.keymap.set("n", "<C-g>w", docs.webpack, { desc = "Webpack Docs" })
vim.keymap.set("n", "<C-g>rj", docs.rollup, { desc = "Rollup Docs" })

-- Testing / QA
vim.keymap.set("n", "<C-g>tst", docs.jest, { desc = "Jest Docs" })
vim.keymap.set("n", "<C-g>rtl", docs.testinglib, { desc = "React Testing Library Docs" })
vim.keymap.set("n", "<C-g>cyp", docs.cypress, { desc = "Cypress Docs" })

-- Documentation / Tools
vim.keymap.set("n", "<C-g>mdn", docs.mdn, { desc = "MDN Docs" })
vim.keymap.set("n", "<C-g>storybook", docs.storybook, { desc = "Storybook Docs" })
vim.keymap.set("n", "<C-g>eslint", docs.eslint, { desc = "ESLint Docs" })
vim.keymap.set("n", "<C-g>prettier", docs.prettier, { desc = "Prettier Docs" })

-- Misc / Helpers
vim.keymap.set("n", "<C-g>graphql", docs.graphql, { desc = "GraphQL Docs" })
vim.keymap.set("n", "<C-g>tailwindui", docs.tailwindui, { desc = "Tailwind UI Docs" })
