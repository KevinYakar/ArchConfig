from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import default_colors, reverse, bold, normal, default


# pylint: disable=too-many-branches,too-many-statements
class Custom(ColorScheme):
    progress_bar_color = 108

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 174
                bg = 235
            if context.border:
                attr |= bold
                fg = 203
            if context.image:
                attr |= bold
                fg = 111
            if context.video:
                attr |= bold
                fg = 111
            if context.audio:
                attr |= bold
                fg = 111
            if context.document:
                attr |= bold
                fg = 108
            if context.container:
                attr |= bold
                fg = 167
            if context.directory:
                attr |= bold
                fg = 173
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
#                 fg = 210
#                 fg = 175
                fg = 174
            if context.socket:
                fg = 180
                attr |= bold
            if context.fifo or context.device:
                fg = 144
                if context.device:
                    attr |= bold
            if context.link:
                fg = 223 if context.good else 116
                bg = 234
            if context.bad:
                bg = 235
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (174, 95):
                    fg = 248
                else:
                    fg = 174
            if not context.selected and (context.cut or context.copied):
                fg = 108
                bg = 234
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 160
#                     fg = 223
            if context.badinfo:
                if attr & reverse:
                    bg = 95
                else:
                    fg = 95

        elif context.in_titlebar:
            fg = 175
            attr |= bold
            if context.hostname:
#                 fg = 174 if context.bad else 180
                fg = 174 if context.bad else 175
            elif context.directory:
                fg = 223
            elif context.tab:
                if context.good:
                    bg = 180
            elif context.link:
                fg = 116

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 108
                elif context.bad:
                    fg = 174
            if context.marked:
                attr |= bold | reverse
                fg = 223
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 174
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 116
                attr &= ~bold
            if context.vcscommit:
                fg = 144
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 116

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 95
            elif context.vcschanged:
                fg = 174
            elif context.vcsunknown:
                fg = 174
            elif context.vcsstaged:
                fg = 108
            elif context.vcssync:
                fg = 108
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 108
            elif context.vcsbehind:
                fg = 174
            elif context.vcsahead:
                fg = 116
            elif context.vcsdiverged:
                fg = 95
            elif context.vcsunknown:
                fg = 174

        return fg, bg, attr
