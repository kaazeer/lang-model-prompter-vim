
# https://docs.litellm.ai/docs/tutorials/azure_openai
# https://docs.litellm.ai/docs/tutorials/text_completion
# !pip install -U litellm

import os

from litellm import text_completion
from typing import Tuple

# custom modules
# import openai_setup
import calculate_latency
import utils

# mandatory OS variables
MODEL = os.getenv('MODEL')

# optional OS variables
MAX_TOKENS = os.getenv('MAX_TOKENS', 1000)
TEMPERATURE = os.getenv('TEMPERATURE', 0.5)
STOP = os.getenv('STOP', '')


def generate(
    prompt: str,
    model: str = MODEL,
    temperature: float = TEMPERATURE,
    max_tokens: int = MAX_TOKENS,