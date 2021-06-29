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
    temperature: float,
    max_tokens: int,
    stop: [str],
) -> str:
    ''' print the model configuration parameters, in one line '''

    info_text = (
        f'Model: {model} '
        f'Temperature: {temperature} Max_tokens: {max_tokens}'
    )
    if stop