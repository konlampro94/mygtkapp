from gi.repository import Gtk
import sys


class MyWindow(GTk.ApplicationWindow):

    def __init__(self, app):
        Gtk.Window.__init__(self, title="Hello World!", application=app)
        self.set_default_size(200, 100)


class MyApplication(Gtk.Application):
    pass


