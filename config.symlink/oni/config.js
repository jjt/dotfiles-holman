"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    oni.input.bind("<c-p>", "quickOpen.show");
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    activate: exports.activate,
    deactivate: exports.deactivate,
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
    "ui.fontSmoothing": "auto"
};
