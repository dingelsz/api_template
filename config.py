import logging.config
import pathlib
import yaml

ROOT_DIR  = pathlib.Path(__file__).parent.absolute()

# Setup Logging
with open(ROOT_DIR / 'logging.yaml', 'rt') as file:
        log_config = yaml.safe_load(file.read())
        logging.config.dictConfig(log_config)
        del log_config

logger = logging.getLogger('default')


import gunicorn
gunicorn.SERVER_SOFTWARE = 'aiohttp/3.10.16a'


