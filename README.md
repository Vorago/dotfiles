# Firefox userChrome.css

## Enable css customizations
about:config
toolkit.legacyUserProfileCustomizations.stylesheets true

## Place custom css
about:support
cd to Profile Directory
mkdir chrome

chrome/userChrome.css
```
/* Hide horizontal tabs at the top of the window */
#main-window[tabsintitlebar="true"]:not([extradragspace="true"]) #TabsToolbar > .toolbar-items {
  opacity: 0;
  pointer-events: none;
}
#main-window:not([tabsintitlebar="true"]) #TabsToolbar {
  visibility: collapse !important;
}

/* Hide the "Tree Style Tab" header at the top of the sidebar */
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar-header {
  display: none;
}

/* Remove all tabs button. */
#alltabs-button {
  display: none;
}
```
