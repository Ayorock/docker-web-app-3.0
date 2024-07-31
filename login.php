<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect the form data
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);
 
    // For demonstration purposes, we'll use hardcoded credentials
    $valid_username = "ayobami";
    $valid_password = "ayobami82";
 
    if ($username == $valid_username && $password == $valid_password) {
        // Start the session and set the user session variable
        session_start();
        $_SESSION['username'] = $username;
 
        echo '<div style="text-align: center;">
                <h2>Login successful</h2>
                <h4>Welcome, ' . htmlspecialchars($username) . ' to Azubi Africa program!</h4>
                <a href="GuestList.php" class="view-link" style="color: blue; text-decoration: underline;">View Guest List</a>
                </div>
              </div>';
    } else {
        echo '<p style="color: red; text-align: center;">Invalid username or password.</p>';
    }
} else {
    echo '<p style="color: red; text-align: center;">Invalid request method.</p>'; 
}