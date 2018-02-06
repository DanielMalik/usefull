import ipdb, traceback, sys


class Word:

    def __init__(self, argument):
        self.argument = argument

    def spell(self):
        for letter in self.argument:
            print(letter)


word_instance = Word('clover field')

try:
    word_instance.spell()
except:
    exc_type, value, tb = sys.exc_info()
    traceback.print_exc()
    ipdb.post_mortem(tb)
