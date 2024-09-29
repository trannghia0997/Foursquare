/// This file contains all the constants used in the app.
library constants;

const fallbackAvatarUrl = "https://www.gravatar.com/avatar/?d=identicon";
const validEmailPattern =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
const defaultAvatarUrl = "https://www.gravatar.com/avatar/?d=identicon";
const validUsernamePattern = r"^[a-zA-Z]\w{2,29}$";
const validVietnamesePhoneNumberPattern = r'^0\d{9}$';
const validInternationalPhoneNumberPattern = r'^\+(?:[0-9] ?){6,14}[0-9]$';
