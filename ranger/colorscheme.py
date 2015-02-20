from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		elif context.in_browser:
			attr = normal
			if context.directory:
				fg = red
			if context.selected:
				fg = white
				bg = red
				attr = bold
		elif context.in_titlebar:
			attr |= normal
			if context.hostname:
				attr |= normal
				fg = red
			elif context.directory:
				fg = red
			elif context.tab:
				if context.good:
					bg = green
			elif context.link:
				fg = magenta

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = black
				elif context.bad:
					fg = red
			if context.marked:
				attr |= bold | reverse
				fg = yellow
			if context.message:
				if context.bad:
					attr |= bold
					fg = red

		if context.text:
			if context.highlight:
				attr |= bold

		if context.in_taskview:
			if context.title:
				fg = red

			if context.selected:
				attr |= normal

		return fg, bg, attr

