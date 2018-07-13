
import * as React from "/Applications/Oni.app/Contents/Resources/app/node_modules/react"
import * as Oni from "/Applications/Oni.app/Contents/Resources/app/node_modules/oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))
    oni.input.bind("<c-p>", "quickOpen.show")
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    activate,
    deactivate,
    //add custom config here, such as

    "ui.colorscheme": "nord",
    "oni.loadInitVim": "~/.oni/init.vim",
    "experimental.markdownPreview.enabled": true,
    "oni.hideMenu": true,
    "sidebar.enabled": false,

    "oni.useDefaultConfig": false,
    //"oni.bookmarks": ["~/Documents"],
    //"oni.loadInitVim": false,
    //"editor.fontSize": "14px",
    //"editor.fontFamily": "Monaco",

    // UI customizations
    "ui.animations.enabled": true,
    //add custom config here, such as

    "ui.fontSmoothing": "auto",
}
