"""
Routes and views for the bottle application.
"""
import myform
import Comments
from bottle import route, view
@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(

    )

@route('/Ewoks')
@view('Ewoks')
def contact():
    """Renders the contact page."""
    return dict(
        title='Ewoks'

    )

@route('/Porgs')
@view('Porgs')
def about():
    """Renders the about page."""
    return dict(
        title='Porgs'

    )
@route('/Wookiee')
@view('Wookiee')
def about():
    """Renders the about page."""
    return dict(
        title='Wookiee'

    )
@route('/Entry')
@view('Entry')
def contact():
    """Renders the contact page."""
    return dict(
        title='Entry'
        )
@route('/Reg')
@view('Reg')
def contact():
    """Renders the contact page."""
    return dict(
        title='Reg'
        )

@route('/Comments')
@view('Comments')
def contact():
    """Renders the contact page."""
    return dict(
        title='Comments'
        )