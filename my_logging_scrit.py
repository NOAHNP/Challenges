import logging
logging.basicConfig(filename='sample_log2.txt', level=logging.DEBUG)
print('Logging started')
logging.debug('Debug Information')
logging.info('info Information')
logging.warning('warning Information')
logging.error('error Information')
logging.critical('critical Information')
print('Logging end')