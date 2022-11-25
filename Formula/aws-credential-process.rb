class AwsCredentialProcess < Formula
  include Language::Python::Virtualenv

  desc "Script to use as credential_process for the AWS CLI (including boto3)"
  homepage "https://github.com/meeuw/aws-credential-process"
  url "https://files.pythonhosted.org/packages/6e/47/c96cb5ad558c2bec061b1cfc869c31ae912ce8c4412ccaac1063fc6aed8b/aws-credential-process-0.20.0.tar.gz"
  sha256 "822d16af4bffbcf2d2db35c12ae50028f5786210c1c6a785294dfb3c45cc4e5d"
  license "GPL-3.0-or-later"
  head "https://github.com/meeuw/aws-credential-process.git"

  bottle do
    root_url "https://github.com/meeuw/homebrew-aws-credential-process/releases/download/aws-credential-process-0.20.0"
    sha256 cellar: :any,                 monterey:     "d332df70207fcc49d90583a3182a871968b81d9d287cccf898cb63bfb01d262e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1dd71a5e5036fe80a5963e60493c62b342a951a20521bd64b8bbfc277822d12c"
  end

  depends_on "rust" => :build
  depends_on "swig" => :build
  depends_on "openssl@1.1"
  depends_on "python@3.11"

  uses_from_macos "libffi"

  on_linux do
    depends_on "pkg-config" => :build
    depends_on "pcsc-lite"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/ad/6d/51d9cd7ce066aab16424c01e8e36d181c8a2354ae36c1142323ffbab3ed2/boto3-1.26.16.tar.gz"
    sha256 "31c0adf71e4bd19a5428580bb229d7ea3b5795eecaa0847a85385df00c026116"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/18/ea/e6c68fe2773ce0fb056f75e7558c87b4ec4aaf9eb9d6aa2b11b547cc6b96/botocore-1.29.16.tar.gz"
    sha256 "8cfcc10f2f1751608c3cec694f2d6b5e16ebcd50d0a104f9914d5616227c62e9"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
    sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/13/dd/a9608b7aebe5d2dc0c98a4b2090a6b815628efa46cc1c046b89d8cd25f4c/cryptography-38.0.3.tar.gz"
    sha256 "bfbe6ee19615b07a98b1d2287d6a6073f734735b49ee45b11324d85efc4d5cbd"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/00/b9/0dfa7dec57ddec0d40a1a56ab28e6b97e31d1225787f2c80a7ab217e0ee6/fido2-1.1.0.tar.gz"
    sha256 "2b4b4e620c2100442c20678e0e951ad6d1efb3ba5ca8ebb720c4c8d543293674"
  end

  resource "importlib_metadata" do
    url "https://files.pythonhosted.org/packages/7e/ec/97f2ce958b62961fddd7258e0ceede844953606ad09b672fa03b86c453d3/importlib_metadata-5.0.0.tar.gz"
    sha256 "da31db32b304314d044d3c12c79bd59e307889b287ad12ff387b3500835fc2ab"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/bf/02/a956c9bfd2dfe60b30c065ed8e28df7fcf72b292b861dca97e951c145ef6/jaraco.classes-3.2.3.tar.gz"
    sha256 "89559fa5c1d3c34eff6f631ad80bb21f378dbcbb35dd161fd2c6b93f5be2f98a"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/d6/f4/154cf374c2daf2020e05c3c6a03c91348d59b23c5366e968feb198306fdf/jeepney-0.8.0.tar.gz"
    sha256 "5efe48d255973902f6badc3ce55e2aa6c5c3b3bc642059ef3a91247bcfcc5806"
  end

  resource "jmespath" do
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
  end

  resource "keyring" do
    sha256 "ad192263e2cdd5f12875dedc2da13534359a7e760e77f8d04b50968a821c2361"
    url "https://files.pythonhosted.org/packages/1c/35/c22960f14f5e17384296b2f09da259f8b5244fb3831eccec71cf948a49c6/keyring-23.11.0.tar.gz"
  end

  resource "more-itertools" do
    sha256 "5a6257e40878ef0520b1803990e3e22303a41b5714006c32a3fd8304b26ea1ab"
    url "https://files.pythonhosted.org/packages/13/b3/397aa9668da8b1f0c307bc474608653d46122ae0563d1d32f60e24fa0cbd/more-itertools-9.0.0.tar.gz"
  end

  resource "pycparser" do
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
  end

  resource "pynentry" do
    sha256 "755aee848bc927cf19285c3d798d95e4c58ebc81718fef85234e962cd2dd079c"
    url "https://files.pythonhosted.org/packages/51/9b/73bc58d5db8cf930e15eeb4ec2208d3620e2328cada8d6d9e940a07d1f3a/pynentry-0.1.6.tar.gz"
  end

  resource "pyscard" do
    sha256 "dc13e34837addbd96c07a1a919fbc1677b2b83266f530a1f79c96930db42ccde"
    url "https://files.pythonhosted.org/packages/07/64/62200892980cacc2968ab6e5ae6ddd345c8b96e2e2076aea9e0459fc540b/pyscard-2.0.5.tar.gz"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
    sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/53/a4/f48c9d79cb507ed1373477dbceaba7401fd8a23af63b837fa61f1dcd3691/SecretStorage-3.3.3.tar.gz"
    sha256 "2403533ef369eca6d2ba81718576c5e0f564d5cca1b58f73a8b23e7d4eeebd77"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c2/51/32da03cf19d17d46cce5c731967bf58de9bd71db3a379932f53b094deda4/urllib3-1.26.13.tar.gz"
    sha256 "c083dd0dce68dbfbe1129d5271cb90f9447dea7d52097c6e0126120c521ddea8"
  end

  resource "yubikey_manager" do
    url "https://files.pythonhosted.org/packages/3e/95/4ef7bfe063e595e9e7ed4c58228d1f07a2ccb3b3a55f01bb2128b347f900/yubikey_manager-5.0.0.tar.gz"
    sha256 "c741747200ced1b5803dfdef6718b07a41e109ccb03dd7b72d3a307a3fb33bb5"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/8d/d7/1bd1e0a5bc95a27a6f5c4ee8066ddfc5b69a9ec8d39ab11a41a804ec8f0d/zipp-3.10.0.tar.gz"
    sha256 "7a7262fd930bd3e36c50b9a64897aec3fafff3dfdeec9623ae22b40e93f99bb8"
  end

  def install
    # Fixes: smartcard/scard/helpers.c:28:22: fatal error: winscard.h: No such file or directory
    ENV.append "CFLAGS", "-I#{Formula["pcsc-lite"].opt_include}/PCSC" if OS.linux?

    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aws-credential-process --version")
  end
end
