local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- 🌐 HTML Snippets
s("html5", {
  t({ "<!DOCTYPE html>", '<html lang="en">', "<head>", '\t<meta charset="UTF-8">' }),
  t({ "", '\t<meta name="viewport" content="width=device-width, initial-scale=1.0">', "\t<title>" }),
  i(1, "Document"),
  t({ "</title>", "</head>", "<body>", "\t" }),
  i(2, "Content here"),
  t({ "", "</body>", "</html>" }),
})

-- 🎨 CSS Snippets
s("flex", {
  t({ "display: flex;", "justify-content: " }),
  i(1, "center"),
  t({ ";", "align-items: " }),
  i(2, "center"),
  t(";"),
})

s("grid", {
  t("display: grid;\ngrid-template-columns: "),
  i(1, "repeat(3, 1fr)"),
  t(";\ngap: "),
  i(2, "1rem"),
  t(";"),
})

-- ⚙️ JavaScript Snippets
s("fn", {
  t("function "),
  i(1, "name"),
  t("("),
  i(2),
  t({ ") {", "\t" }),
  i(0),
  t({ "", "}" }),
})

s("log", {
  t("console.log("),
  i(1, "'Debug:'"),
  t(");"),
})

s("fetch", {
  t("fetch('"),
  i(1, "/api"),
  t({ "')", "\t.then(res => res.json())", "\t.then(data => {" }),
  t({ "\t\t" }),
  i(2, "console.log(data)"),
  t({ "", "\t});" }),
})

-- ⚛️ React Snippets
s("rfc", {
  t("import React from 'react';"),
  t({ "", "", "const " }),
  i(1, "ComponentName"),
  t(" = () => {"),
  t({ "", "\treturn (" }),
  t({ "\t\t<div>" }),
  i(2, "Hello World"),
  t("</div>"),
  t({ "\t);", "};", "", "export default " }),
  i(1),
  t(";"),
})

s("useState", {
  t("const ["),
  i(1, "state"),
  t(", set"),
  i(2, "State"),
  t("] = useState("),
  i(3, "initialValue"),
  t(");"),
})

s("useEffect", {
  t({ "useEffect(() => {", "\t" }),
  i(1, "// effect"),
  t({ "", "\treturn () => {", "\t\t" }),
  i(2, "// cleanup"),
  t({ "", "\t};", "}, [" }),
  i(3),
  t("]);"),
})
