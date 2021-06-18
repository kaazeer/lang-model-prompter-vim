# utilities to be used by python functions

PLUGIN_NAME = 'prompter.vim'
AUTHOR = 'giorgio.robino@gmail.com'
VERSION = '0.2 (November 28, 2023)'


def version():
    return f'{PLUGIN_NAME}, by {AUTHOR}, version {VERSION}'


def help():
    return '\n'.join([
        'Version:',
        version(),
        # '',
        # 'Commands:',
        # 'PrompterSetup    - read OS environment variables',
        # 'PrompterGenerate - trigger the prompt completion',
        # 'PrompterInfo     - some informations (version, commands, current model)',
        # 'prompterModel   - show model attributes'
    ])


def model_settings(
    model: str,
    temperatur