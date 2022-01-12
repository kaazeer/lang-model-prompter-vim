# python utility functions that use the vim module
import vim


def echo(text):
    ''' standard (multi lines) print in the command-line area '''
    vim.command(f'echo "{text}"')


def info(text)