# Lang-Model-Prompter-vim\n\nUse Vim as a powerful tool for efficiently designing, running, debugging, and saving your Large Language Models (LLMs) prompts.\n\n- Lang-Model-Prompter-vim transforms the Vim editor into an efficient prompt engineering environment, effectively replacing LLM proprietary providers web playgrounds like: [Azure OpenAI Service Playground](https:\/\/oai.azure.com\/{portal\/) or [OpenAI Playground](https:\/\/platform.openai.com\/playground).\n\n- From version 0.2, the plugin uses [LiteLLM](https:\/\/github.com\/BerriAI\/litellm) as a LLM provider abstraction layer.  LiteLLM calls all LLM APIs using the OpenAI format: Bedrock, Azure, OpenAI, Cohere, Anthropic, Ollama, Sagemaker, HuggingFace, Replicate (100+ LLMs). So you can use lang-model-prompter-vim with a vast list of different LLM providers!\n\nThis plugin is not primarily designed as a code completion tool, although you can use it too for that purpose. Instead, this plugin aims to be a general-purpose replacement for web text completion playgrounds, intended for prompt engineers who want to test and debug natural language prompts.\n\n## Install\nThis plugin is developed in 