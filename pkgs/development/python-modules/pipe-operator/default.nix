{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  typing-extensions,
  setuptools,
  wheel,
}:

buildPythonPackage rec {
  pname = "pipe-operator";
  version = "2.0.1-unstable-2026-01-09";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "hilaolu";
    repo = "pipe-operator";
    rev = "889e9b6f781c8f950cdcf92b566647738e02cee5";
    hash = "sha256-cqIZY/wLuvAOnl0LYq9ZoYpT91daH3rn9SFfTtAZcLE=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    typing-extensions
  ];

  pythonImportsCheck = [
    "pipe_operator"
  ];

  meta = {
    description = "Elixir's pipe operator in Python";
    homepage = "https://github.com/hilaolu/pipe-operator";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
  };
}
