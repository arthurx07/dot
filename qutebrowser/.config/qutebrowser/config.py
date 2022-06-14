import subprocess
import os
from qutebrowser.api import interceptor

# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(True)

# Require a confirmation before quitting the application.
# Type: ConfirmQuit
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ['downloads']

# Always restore open sites when qutebrowser is reopened. Without this
# option set, `:wq` (`:quit --save`) needs to be used to save open tabs
# (and restore them), while quitting qutebrowser in any other way will
# not save/restore the session. By default, this will save to the
# session which was last loaded. This behavior can be customized via the
# `session.default_name` setting.
# Type: Bool
c.auto_save.session = False

# Automatically start playing `<video>` elements.
# Type: Bool
c.content.autoplay = False
#c.content.autoplay = True

c.tabs.title.format_pinned = '{index} {audio}'
c.tabs.background = True

c.url.open_base_url = True

c.input.insert_mode.auto_load = True
#c.spellcheck.languages = ["en-US", "es-ES"]


# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL. With QtWebEngine 5.15.0+, paths will be stripped
# from URLs, so URL patterns using paths will not match. With
# QtWebEngine 5.15.2+, subdomains are additionally stripped as well, so
# you will typically need to set this setting for `example.com` when the
# cookie is set on `somesubdomain.example.com` for it to work properly.
# To debug issues with this setting, start qutebrowser with `--debug
# --logfilter network --debug-flag log-cookies` which will show all
# cookies being set.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications.enabled', False, 'https://www.netflix.com')

# Allow pdf.js to view PDF files in the browser. Note that the files can
# still be downloaded by clicking the download button in the pdf.js
# viewer.
# Type: Bool
c.content.pdfjs = True

# Duration (in milliseconds) to wait before removing finished downloads.
# If set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 5000

# Editor (and arguments) to use for the `edit-*` commands. The following
# placeholders are defined:  * `{file}`: Filename of the file to be
# edited. * `{line}`: Line in which the caret is found in the text. *
# `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['kitty', '-e', "nvim", '{file}', '-c', 'normal {line}G{column0}l']

# Command (and arguments) to use for selecting a single file in forms.
# The command should write the selected file path to the specified file
# or stdout. The following placeholders are defined: * `{}`: Filename of
# the file to be written to. If not contained in any argument, the
# standard output of the command is read instead.
# Type: ShellCommand
c.fileselect.single_file.command = ['kitty', '-e', 'ranger', '--choosefile={}']

# Command (and arguments) to use for selecting multiple files in forms.
# The command should write the selected file paths to the specified file
# or to stdout, separated by newlines. The following placeholders are
# defined: * `{}`: Filename of the file to be written to. If not
# contained in any argument, the   standard output of the command is
# read instead.
# Type: ShellCommand
c.fileselect.multiple_files.command = ['kitty', '-e', 'ranger', '--choosefiles={}']

# Command (and arguments) to use for selecting a single folder in forms.
# The command should write the selected folder path to the specified
# file or stdout. The following placeholders are defined: * `{}`:
# Filename of the file to be written to. If not contained in any
# argument, the   standard output of the command is read instead.
# Type: ShellCommand
c.fileselect.folder.command = ['kitty', '-e', 'ranger', '--choosedir={}']

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# Default font families to use. Whenever "default_family" is used in a
# font setting, it's replaced with the fonts listed here. If set to an
# empty value, a system-specific monospace default is used.
# Type: List of Font, or Font
c.fonts.default_family = 'RobotoMono Nerd Font Regular'

# Map keys to other keys, so that they are equivalent in all modes. When
# the key used as dictionary-key is pressed, the binding for the key
# used as dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map <Ctrl-[> to <Escape>. NOTE:
# This should only be used if two keys should always be equivalent, i.e.
# for things like <Enter> (keypad) and <Return> (non-keypad). For normal
# command bindings, qutebrowser works differently to vim: You always
# bind keys to commands, usually via `:bind` or `config.bind()`. Instead
# of using this setting, consider finding the command a key is bound to
# (e.g. via `:bind gg`) and then binding the same command to the desired
# key. Note that when a key is bound (via `bindings.default` or
# `bindings.commands`), the mapping is ignored.
# Type: Dict
c.bindings.key_mappings = {'<Ctrl+6>': '<Ctrl+^>', '<Ctrl+Enter>': '<Ctrl+Return>', '<Ctrl+i>': '<Tab>', '<Ctrl+j>': '<Return>', '<Ctrl+m>': '<Return>', '<Ctrl+[>': '<Escape>', '<Enter>': '<Return>', '<Shift+Enter>': '<Return>', '<Shift+Return>': '<Return>'}

# Directory to save downloads to. If unset, a sensible OS-specific
# default is used.
# Type: Directory
c.downloads.location.directory = '~/tmp'

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'never'

c.statusbar.show = 'never'


# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`).  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}',
    'gw': 'https://wiki.gentoo.org/?search={}',
    'aw': 'https://wiki.archlinux.org/index.php?search={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'kt': 'https://kitsu.io/anime?text={}',
    'ktm': 'https://kitsu.io/manga?text={}',
    'drive': 'https://drive.google.com/drive/search?q={}',
    'anime': 'https://simplyaweeb.to/anime/search/{}',
    'deepl': 'https://www.deepl.com/translator#es/en/{}',
    'wiki': 'https://en.wikipedia.org/wiki/Special:Search?search={}&go=Go&ns0=1',
    'gh': 'https://github.com/search?q={}',
    'gp': 'https://packages.gentoo.org/packages/search?q={}',
    'zugaina': 'https://gpo.zugaina.org/Search?search={}',
    } 

# c.url.start_pages = "https://alexw00.github.io/StartTreeV2/html/v.html?t=~(s~(n~%27ddg~u~%27https*3a*2f*2fduckduckgo.com*2f*3fq*3d)~v~%270.0~bmc~(~(~(cn~%27anime*20-*20manga~b~(~(n~%27kitsu~u~%27https*3a*2f*2fkitsu.io*2f)~(n~%27animeflv~u~%27https*3a*2f*2fwww3.animeflv.net*2f)~(n~%27simplyaweeb~u~%27https*3a*2f*2fsimplyaweeb.to*2fanime*2f)~(n~%27netflix~u~%27https*3a*2f*2fnetflix.com)))~(cn~%27dev~b~(~(n~%27github~u~%27https*3a*2f*2fgithub.com)~(n~%27hackernews~u~%27https*3a*2f*2fnews.ycombinator.com*2f)~(n~%27mastermind~u~%27https*3a*2f*2fmastermind.ac))))~(~(cn~%27social*20media~b~(~(n~%27reddit~u~%27https*3a*2f*2freddit.com)~(n~%27twitter~u~%27https*3a*2f*2ftwitter.com)~(n~%27youtube~u~%27https*3a*2f*2fyoutube.com)~(n~%27twitch~u~%27https*3a*2f*2ftwitch.tv)))~(cn~%27wikis~b~(~(n~%27arch~u~%27https*3a*2f*2fwiki.archlinux.org)~(n~%27gentoo~u~%27https*3a*2f*2fwiki.gentoo.org)))))~t~(nr~15))"
# c.url.default_page = "https://alexw00.github.io/StartTreeV2/html/v.html?t=~(s~(n~%27ddg~u~%27https*3a*2f*2fduckduckgo.com*2f*3fq*3d)~v~%270.0~bmc~(~(~(cn~%27anime*20-*20manga~b~(~(n~%27kitsu~u~%27https*3a*2f*2fkitsu.io*2f)~(n~%27animeflv~u~%27https*3a*2f*2fwww3.animeflv.net*2f)~(n~%27simplyaweeb~u~%27https*3a*2f*2fsimplyaweeb.to*2fanime*2f)~(n~%27netflix~u~%27https*3a*2f*2fnetflix.com)))~(cn~%27dev~b~(~(n~%27github~u~%27https*3a*2f*2fgithub.com)~(n~%27hackernews~u~%27https*3a*2f*2fnews.ycombinator.com*2f)~(n~%27mastermind~u~%27https*3a*2f*2fmastermind.ac))))~(~(cn~%27social*20media~b~(~(n~%27reddit~u~%27https*3a*2f*2freddit.com)~(n~%27twitter~u~%27https*3a*2f*2ftwitter.com)~(n~%27youtube~u~%27https*3a*2f*2fyoutube.com)~(n~%27twitch~u~%27https*3a*2f*2ftwitch.tv)))~(cn~%27wikis~b~(~(n~%27arch~u~%27https*3a*2f*2fwiki.archlinux.org)~(n~%27gentoo~u~%27https*3a*2f*2fwiki.gentoo.org)))))~t~(nr~15))"
#c.url.default_page = "https://zombiefox.github.io/nightTab/"
#c.url.start_pages = "https://zombiefox.github.io/nightTab/"

# Bindings for normal mode
config.bind(';m', 'hint links spawn --detach mpv --force-window yes {hint-url}')
config.bind(';z', 'hint links spawn st -e youtube-dl {hint-url}')
config.bind('t', 'set-cmd-text -s :open -t')
#config.bind('xb', 'config-cycle statusbar.show always never')
#config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind("pt", 'tab-pin')
config.bind("cs", 'config-source')
config.bind("gr", 'greasemonkey-reload' )

def read_xresources(prefix):
    """
    read settings from xresources
    """
    props = {}
    x = subprocess.run(["xrdb", "-query"], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split("\n")
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(":\t")
        props[prop] = value
    return props

xresources = read_xresources("*")

base00 = xresources['*color0']
base01 = xresources['*color1']
base02 = xresources['*color2']
base03 = xresources['*color3']
base04 = xresources['*color4']
base05 = xresources['*color5']
base06 = xresources['*color6']
base07 = xresources['*color7']
base08 = xresources['*color8']
base09 = xresources['*color9']
base0A = xresources['*color10']
base0B = xresources['*color11']
base0C = xresources['*color12']
base0D = xresources['*color13']
base0E = xresources['*color14']
base0F = xresources['*color15']
foreground = xresources['*foreground']
background = xresources['*background']

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = [ 'white', 'white', 'white']

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = base04

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = base04

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = 'white' 

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = base02

# Top border color of the completion widget category headers.
# Type: QssColor
#c.colors.completion.category.border.top = 'white' 

# Bottom border color of the completion widget category headers.
# Type: QssColor
#c.colors.completion.category.border.bottom = 'white'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = 'white'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = base02

c.colors.completion.item.selected.border.bottom = base00
c.colors.completion.item.selected.border.top = base00

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
#c.colors.completion.item.selected.match.fg = 'red'

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = 'white'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
#c.colors.completion.scrollbar.fg = 'white'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = base01

# Background color for downloads with errors.
# Type: QtColor
#c.colors.downloads.error.bg = '#ff6c6b'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = 'white'

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = 'black'

# Font color for background hints
c.colors.hints.bg = base06

# Background color of an info message.
# Type: QssColor
#c.colors.messages.info.bg = '#282c34'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = base02 

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = base07

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = base01

# Background color of the statusbar in passthrough mode.
# Type: QssColor
#c.colors.statusbar.passthrough.bg = base04

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = base02

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
#c.colors.statusbar.url.warn.fg = 'yellow'

# satusbar url color
c.colors.statusbar.url.success.https.fg = base07

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = base00

c.colors.tabs.indicator.start = base03
c.colors.tabs.indicator.stop = base03

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = base02

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = base02

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = base01

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = base01

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = base02

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = base02

# Background color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.bg = base01

# Background color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.bg = base01

# If not in light theme
#if xresources["*.background"] != "#ffffff":
    #c.qt.args = ['blink-settings=darkMode=4']
    #c.colors.webpage.prefers_color_scheme = light
    #c.colors.webpage.darkmode.enabled = True
    #c.hints.border = "1px solid #FFFFFF"

#config.set("colors.webpage.darkmode.enabled", True)

c.content.blocking.method = 'both'
c.content.blocking.enabled = True
c.content.blocking.adblock.lists = [ 
        "https://easylist.to/easylist/easylist.txt", \
        "https://easylist.to/easylist/easyprivacy.txt", \
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt", \
        "https://easylist.to/easylist/fanboy-annoyance.txt", \
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/lan-block.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt", \
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt", \
        ]
