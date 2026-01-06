{
  lib,
  buildPythonPackage,
  fetchPypi,
  typing-extensions,
  setuptools,
  wheel,
}:

buildPythonPackage rec {
  pname = "pipe-operator";
  version = "2.0.1";
  pyproject = true;

  src = fetchPypi {
    pname = "pipe_operator";
    inherit version;
    sha256 = "e62ed39db42ea3bcc7184b36355603ad81a57fa68462e21868efe9e6444f26f7";
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
    homepage = "https://pypi.org/project/pipe-operator/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
  };
}
