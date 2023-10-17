class CreditCard {
  String creditCardNo;
  String creditCardUser;
  String securityCode;
  String expirationDate;

  CreditCard(this.creditCardNo, this.creditCardUser, this.securityCode, this.expirationDate);

  String getCreditCardNo() {
    return creditCardNo;
  }

  void setCreditCardNo(String creditCardNo) {
    this.creditCardNo = creditCardNo;
  }

  String getCreditCardUser() {
    return creditCardUser;
  }

  void setCreditCardUser(String creditCardUser) {
    this.creditCardUser = creditCardUser;
  }

  String getSecurityCode() {
    return securityCode;
  }

  void setSecurityCode(String securityCode) {
    this.securityCode = securityCode;
  }

  String getExpirationDate() {
    return expirationDate;
  }

  void setExpirationDate(String expirationDate) {
    this.expirationDate = expirationDate;
  }
}
