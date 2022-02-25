class PaNetworkHeader {
  static Map<String, String> create(
      {PaNetworkRequestType requestType = PaNetworkRequestType.get,
        String? token = ""}) {
    Map<String, String> header = {"Accept": "application/json"};

    switch (requestType) {
      case PaNetworkRequestType.get:
        break;

      case PaNetworkRequestType.post:
      case PaNetworkRequestType.delete:
        header["Content-type"] = "application/json";
        break;

      case PaNetworkRequestType.getWithAuth:
      case PaNetworkRequestType.postWithAuth:
      case PaNetworkRequestType.deleteWithAuth:
        header["Content-type"] = "application/json";
        header["Authorization"] = "Bearer " + token!;
        break;
    }

    return header;
  }
}

enum PaNetworkRequestType {
  get,
  post,
  delete,
  getWithAuth,
  postWithAuth,
  deleteWithAuth
}
