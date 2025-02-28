import pytest
from src.app.main import main

def test_main(capsys):
    main()
    captured = capsys.readouterr()
    assert captured.out == "Hello, Jenkins and Docker!\n"