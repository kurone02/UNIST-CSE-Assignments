import re

while True:
    target = input('Enter a degree: ')
    pattern = r"^[-+]?\d+(\.?\d+)?[cCfF]$"

    regexp = re.compile(pattern)
    result = regexp.search(target)

    if result:
        n = float(target[:-1])

        if target[-1] in ['c', 'C']:
            print("{:.2f}F".format((9 / 5 * n) + 32))
        else:
            print("{:.2f}C".format(5 / 9 * (n - 32)))

        break