scope = ['text.html']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Coldfusion"
  description: "Coldfusion Markup; cfscript is also handled via the prettydiff javascript parser"
  namespace: "cfml"

  ###
  Supported Grammars
  ###
  grammars: [
    "html"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "cfm"
    "cfml"
    "cfc"
  ]

  options:
    indent_inner_html:
      type: 'boolean'
      default: false
      description: "Indent <head> and <body> sections."
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: defaultIndentChar
      minimum: 0
      description: "Indentation character"
    brace_style:
      type: 'string'
      default: "collapse"
      enum: ["collapse", "expand", "end-expand", "none"]
      description: "[collapse|expand|end-expand|none]"
    indent_scripts:
      type: 'string'
      default: "normal"
      enum: ["keep", "separate", "normal"]
      description: "[keep|separate|normal]"
    wrap_line_length:
      type: 'integer'
      default: 250
      description: "Maximum characters per line (0 disables)"
    wrap_attributes:
      type: 'string'
      default: "auto"
      enum: ["auto", "force"]
      description: "Wrap attributes to new lines [auto|force]"
    wrap_attributes_indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indent wrapped attributes to after N characters"
    preserve_newlines:
      type: 'boolean'
      default: true
      description: "Preserve line-breaks"
    max_preserve_newlines:
      type: 'integer'
      default: 10
      description: "Number of line-breaks to be preserved in one chunk"
    unformatted:
      type: 'array'
      default: ['a', 'sub', 'sup', 'b', 'i', 'u']
      items:
        type: 'string'
      description: "List of tags (defaults to inline) that should not be reformatted"
    end_with_newline:
      type: 'boolean'
      default: false
      description: "End output with newline"
    extra_liners:
      type: 'array'
      default: ['head', 'body', '/html']
      items:
        type: 'string'
      description: "List of tags (defaults to [head,body,/html] that should have an extra newline before them."

}
