
import { ref } from  'vue';

const email = ref<string | null>(localStorage.getItem("email"));
const isAuthenticated = ref<boolean>(!!localStorage.getItem("email"));

const userLogin = (newEmail: string) => {
  email.value = newEmail;
  isAuthenticated.value = true;
  localStorage.setItem("email", newEmail);
}

const userLogout = () => {
  email.value = null;
  isAuthenticated.value = false;
  localStorage.removeItem("email");
}

const checkLogin = () => {
  return isAuthenticated.value;
};

export { email, isAuthenticated, userLogin, userLogout, checkLogin };