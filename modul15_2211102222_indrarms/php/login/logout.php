
<?php
session_start(); // Memulai session
session_unset(); // Menghapus semua variabel sesi
session_destroy(); // Menghancurkan sesi

// Menghapus cookie sesi jika ada (opsional, untuk keamanan tambahan)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(),
        '',
        time() - 42000,
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
    );
}

// Redirect kembali ke halaman login
header("Location: login.php");
exit();
?>