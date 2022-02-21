# python utility functions that use the vim module
import vim


def echo(text):
    ''' standard (multi lines) print in the command-line area '''
    vim.command(f'echo "{text}"')


def info(text):
    ''' print a single line and redraw
        Useful when you want to display dynamic progress or status updates
        without creating new lines in the command-line area.
    '''
    vim.comm