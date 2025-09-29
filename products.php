<?php
require "db.php";

$method = $_SERVER['REQUEST_METHOD'];

// GET all products
if ($method == 'GET' && !isset($_GET['id'])) {
    $result = $conn->query("SELECT * FROM products");
    echo json_encode($result->fetch_all(MYSQLI_ASSOC));
}

// GET single product by id
elseif ($method == 'GET' && isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $stmt = $conn->prepare("SELECT * FROM products WHERE id=?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    echo json_encode($stmt->get_result()->fetch_assoc());
}

// POST: create new product
elseif ($method == 'POST') {
    $data = json_decode(file_get_contents("php://input"), true);
    $stmt = $conn->prepare("INSERT INTO products (name, description, price, category, stock, image_url) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssdsis", $data['name'], $data['description'], $data['price'], $data['category'], $data['stock'], $data['image_url']);
    $stmt->execute();
    echo json_encode(["id" => $conn->insert_id, "message" => "Product created"]);
}

// PUT: update product
elseif ($method == 'PUT') {
    $data = json_decode(file_get_contents("php://input"), true);
    $stmt = $conn->prepare("UPDATE products SET name=?, description=?, price=?, category=?, stock=?, image_url=? WHERE id=?");
    $stmt->bind_param("ssdsisi", $data['name'], $data['description'], $data['price'], $data['category'], $data['stock'], $data['image_url'], $data['id']);
    $stmt->execute();
    echo json_encode(["updated" => $stmt->affected_rows]);
}

// DELETE: remove product
elseif ($method == 'DELETE') {
    $data = json_decode(file_get_contents("php://input"), true);
    $id = intval($data['id']);
    $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    echo json_encode(["deleted" => $stmt->affected_rows]);
}

$conn->close();
?>
