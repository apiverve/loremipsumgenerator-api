from setuptools import setup, find_packages

setup(
    name='apiverve_loremipsumgenerator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Lorem Ipsum Generator generates placeholder text by paragraph count with optional length limits and standard opening phrasing. Every response includes the dummy copy plus word and sentence counts.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/loremipsumgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
