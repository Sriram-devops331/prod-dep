<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumière | Modern Luxury Shopping</title>
    
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="[fonts.googleapis.com](https://fonts.googleapis.com)">
    <link rel="preconnect" href="[fonts.gstatic.com](https://fonts.gstatic.com)" crossorigin>
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=Poppins:wght@400;500;600;700&family=Inter:wght@300;400;500&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">
    
    <style>
        :root {
            /* Color Palette */
            --primary: #0f172a;
            --secondary: #1e293b;
            --accent: #3b82f6;
            --accent-glow: rgba(59, 130, 246, 0.15);
            --accent-light: #60a5fa;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --light: #f8fafc;
            --muted: #94a3b8;
            --border: #e2e8f0;
            
            /* Gradients */
            --gradient-primary: linear-gradient(135deg, #3b82f6 0%, #8b5cf6 100%);
            --gradient-dark: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            --gradient-card: linear-gradient(135deg, #ffffff 0%, #f1f5f9 100%);
            
            /* Shadows */
            --shadow-sm: 0 2px 8px rgba(15, 23, 42, 0.04);
            --shadow-md: 0 8px 24px rgba(15, 23, 42, 0.08);
            --shadow-lg: 0 16px 48px rgba(15, 23, 42, 0.12);
            --shadow-xl: 0 24px 64px rgba(15, 23, 42, 0.16);
            --shadow-accent: 0 8px 32px rgba(59, 130, 246, 0.25);
            
            /* Border Radius */
            --radius-sm: 8px;
            --radius-md: 16px;
            --radius-lg: 24px;
            --radius-xl: 32px;
            --radius-full: 999px;
            
            /* Spacing */
            --space-xs: 0.5rem;
            --space-sm: 1rem;
            --space-md: 1.5rem;
            --space-lg: 2rem;
            --space-xl: 3rem;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--primary);
            background: var(--light);
            line-height: 1.6;
            overflow-x: hidden;
        }

        ::selection {
            background: var(--accent);
            color: white;
        }

        /* Container */
        .container {
            width: 100%;
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        /* Typography */
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Outfit', sans-serif;
            font-weight: 700;
            line-height: 1.2;
        }

        h1 {
            font-size: 3.5rem;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        h2 {
            font-size: 2.5rem;
            margin-bottom: var(--space-md);
        }

        h3 {
            font-size: 1.75rem;
        }

        .text-gradient {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .muted {
            color: var(--muted);
            font-size: 0.95rem;
        }

        .highlight {
            position: relative;
            display: inline-block;
        }

        .highlight::after {
            content: '';
            position: absolute;
            bottom: 2px;
            left: 0;
            width: 100%;
            height: 6px;
            background: var(--accent);
            opacity: 0.2;
            z-index: -1;
            border-radius: 3px;
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.75rem;
            padding: 0.875rem 1.75rem;
            border-radius: var(--radius-full);
            font-family: 'Outfit', sans-serif;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            border: none;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }

        .btn:hover::before {
            width: 300px;
            height: 300px;
        }

        .btn-primary {
            background: var(--gradient-primary);
            color: white;
            box-shadow: var(--shadow-accent);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .btn-secondary {
            background: transparent;
            border: 2px solid var(--accent);
            color: var(--accent);
        }

        .btn-secondary:hover {
            background: var(--accent);
            color: white;
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.2);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.3);
        }

        .btn-icon {
            width: 2.5rem;
            height: 2.5rem;
            padding: 0;
            border-radius: 50%;
            background: white;
            color: var(--primary);
            box-shadow: var(--shadow-md);
        }

        .btn-icon:hover {
            transform: scale(1.1);
            box-shadow: var(--shadow-lg);
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(226, 232, 240, 0.5);
            padding: 1rem 0;
            transition: all 0.3s ease;
        }

        header.scrolled {
            padding: 0.75rem 0;
            box-shadow: var(--shadow-md);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 2rem;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 1.75rem;
        }

        .brand .logo {
            width: 2.5rem;
            height: 2.5rem;
            background: var(--gradient-primary);
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 700;
        }

        nav.main-nav ul {
            display: flex;
            gap: 1.5rem;
            list-style: none;
        }

        nav.main-nav a {
            color: var(--secondary);
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: var(--radius-full);
            transition: all 0.2s ease;
            position: relative;
        }

        nav.main-nav a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }

        nav.main-nav a:hover::after {
            width: 70%;
        }

        nav.main-nav a.active {
            background: var(--accent-glow);
            color: var(--accent);
        }

        .search-wrapper {
            position: relative;
            flex: 1;
            max-width: 400px;
        }

        .search {
            width: 100%;
            padding: 0.875rem 1rem 0.875rem 3rem;
            border: 2px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 0.95rem;
            transition: all 0.3s ease;
            background: white;
        }

        .search:focus {
            outline: none;
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--muted);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .cart-btn {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--danger);
            color: white;
            font-size: 0.75rem;
            font-weight: 700;
            width: 1.25rem;
            height: 1.25rem;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        /* Hero Section */
        .hero {
            position: relative;
            padding: 8rem 0 6rem;
            background: var(--gradient-dark);
            color: white;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: 
                radial-gradient(circle at 20% 50%, rgba(59, 130, 246, 0.2) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, rgba(139, 92, 246, 0.15) 0%, transparent 50%);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .hero h1 {
            margin-bottom: 1.5rem;
            font-size: 4rem;
            background: linear-gradient(135deg, #fff 0%, #94a3b8 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            opacity: 0.9;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .hero-actions {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        .floating-shapes {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
        }

        .shape {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            animation: float 15s infinite ease-in-out;
        }

        .shape:nth-child(1) {
            width: 100px;
            height: 100px;
            top: 20%;
            left: 10%;
            animation-delay: 0s;
        }

        .shape:nth-child(2) {
            width: 150px;
            height: 150px;
            top: 60%;
            right: 10%;
            animation-delay: 2s;
        }

        .shape:nth-child(3) {
            width: 80px;
            height: 80px;
            bottom: 20%;
            left: 20%;
            animation-delay: 4s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(180deg); }
        }

        /* Sections */
        .section {
            padding: 5rem 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-subtitle {
            color: var(--accent);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: 0.875rem;
            margin-bottom: 0.5rem;
        }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .category-card {
            background: var(--gradient-card);
            border-radius: var(--radius-lg);
            padding: 2rem 1.5rem;
            text-align: center;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: var(--gradient-primary);
            opacity: 0;
            transition: opacity 0.4s ease;
            z-index: 0;
        }

        .category-card:hover::before {
            opacity: 1;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-xl);
        }

        .category-card > * {
            position: relative;
            z-index: 1;
        }

        .category-icon {
            width: 3.5rem;
            height: 3.5rem;
            background: white;
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            transition: all 0.4s ease;
        }

        .category-card:hover .category-icon {
            background: rgba(255, 255, 255, 0.9);
            transform: scale(1.1);
        }

        .category-icon i {
            font-size: 1.5rem;
            color: var(--accent);
            transition: color 0.4s ease;
        }

        .category-card:hover .category-icon i {
            color: var(--accent);
        }

        .category-card h4 {
            margin-bottom: 0.5rem;
            transition: color 0.4s ease;
        }

        .category-card:hover h4,
        .category-card:hover .muted {
            color: white;
        }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .product-card {
            background: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            box-shadow: var(--shadow-md);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--gradient-primary);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: var(--radius-full);
            font-size: 0.875rem;
            font-weight: 600;
            z-index: 2;
        }

        .product-image {
            width: 100%;
            height: 200px;
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.1);
        }

        .product-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(15, 23, 42, 0.7);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .product-card:hover .product-overlay {
            opacity: 1;
        }

        .product-content {
            padding: 1.5rem;
        }

        .product-title {
            font-size: 1.125rem;
            margin-bottom: 0.5rem;
            transition: color 0.3s ease;
        }

        .product-card:hover .product-title {
            color: var(--accent);
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .current-price {
            font-size: 1.25rem;
            font-weight: 700;
            color: var(--accent);
        }

        .original-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 0.95rem;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 0.25rem;
            color: var(--warning);
            margin-bottom: 1rem;
        }

        .rating-count {
            color: var(--muted);
            font-size: 0.875rem;
            margin-left: 0.25rem;
        }

        .product-actions {
            display: flex;
            gap: 0.5rem;
        }

        /* Deal Section */
        .deal-section {
            background: var(--gradient-card);
            border-radius: var(--radius-xl);
            padding: 4rem;
            margin: 4rem 0;
            position: relative;
            overflow: hidden;
        }

        .deal-section::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 100%;
            height: 200%;
            background: var(--gradient-primary);
            opacity: 0.05;
            transform: rotate(-45deg);
        }

        .deal-content {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .deal-timer {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1rem;
            margin: 2rem 0;
        }

        .timer-item {
            background: white;
            padding: 1.5rem;
            border-radius: var(--radius-lg);
            text-align: center;
            box-shadow: var(--shadow-md);
        }

        .timer-value {
            font-size: 2rem;
            font-weight: 700;
            color: var(--accent);
            margin-bottom: 0.25rem;
        }

        .timer-label {
            font-size: 0.875rem;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .deal-image {
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-xl);
        }

        .deal-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.6s ease;
        }

        .deal-image:hover img {
            transform: scale(1.05);
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .testimonial-card {
            background: white;
            padding: 2rem;
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-md);
            transition: all 0.3s ease;
            position: relative;
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .testimonial-card::before {
            content: '"';
            position: absolute;
            top: 1rem;
            left: 1rem;
            font-size: 4rem;
            color: var(--accent);
            opacity: 0.1;
            font-family: serif;
            line-height: 1;
        }

        .testimonial-rating {
            color: var(--warning);
            margin-bottom: 1rem;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .author-avatar {
            width: 3rem;
            height: 3rem;
            border-radius: 50%;
            overflow: hidden;
        }

        .author-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter-section {
            background: var(--gradient-dark);
            color: white;
            border-radius: var(--radius-xl);
            padding: 4rem;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: 
                radial-gradient(circle at 20% 80%, rgba(59, 130, 246, 0.2) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, rgba(139, 92, 246, 0.15) 0%, transparent 50%);
        }

        .newsletter-content {
            position: relative;
            z-index: 1;
            max-width: 600px;
            margin: 0 auto;
        }

        .newsletter-form {
            display: flex;
            gap: 1rem;
            margin-top: 2rem;
            flex-wrap: wrap;
            justify-content: center;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 250px;
            padding: 1rem 1.5rem;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: var(--radius-full);
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .newsletter-form input:focus {
            outline: none;
            border-color: white;
            background: rgba(255, 255, 255, 0.15);
        }

        .newsletter-form input::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        /* Footer */
        footer {
            background: var(--secondary);
            color: white;
            padding: 4rem 0 2rem;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 3rem;
            margin-bottom: 3rem;
        }

        .footer-logo {
            font-family: 'Poppins', sans-serif;
            font-size: 1.75rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .footer-description {
            color: var(--muted);
            margin-bottom: 1.5rem;
            max-width: 300px;
        }

        .social-links {
            display: flex;
            gap: 1rem;
        }

        .social-link {
            width: 2.5rem;
            height: 2.5rem;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .social-link:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }

        .footer-heading {
            font-size: 1.125rem;
            margin-bottom: 1.5rem;
            color: white;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.75rem;
        }

        .footer-links a {
            color: var(--muted);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: white;
        }

        .footer-bottom {
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            text-align: center;
            color: var(--muted);
            font-size: 0.875rem;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-in {
            animation: fadeInUp 0.6s ease forwards;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            h1 { font-size: 3rem; }
            h2 { font-size: 2.25rem; }
            .hero h1 { font-size: 3.5rem; }
            
            .deal-content {
                grid-template-columns: 1fr;
                text-align: center;
            }
        }

        @media (max-width: 768px) {
            .header-inner {
                flex-wrap: wrap;
            }
            
            .search-wrapper {
                order: 3;
                max-width: 100%;
                margin-top: 1rem;
            }
            
            .hero {
                padding: 6rem 0 4rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero p {
                font-size: 1.125rem;
            }
            
            .section {
                padding: 3rem 0;
            }
            
            .deal-section,
            .newsletter-section {
                padding: 2rem;
            }
            
            .deal-timer {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter-form input {
                min-width: 100%;
            }
        }

        @media (max-width: 480px) {
            .categories-grid,
            .products-grid {
                grid-template-columns: 1fr;
            }
            
            .hero-actions {
                flex-direction: column;
                align-items: center;
            }
            
            .hero-actions .btn {
                width: 100%;
                max-width: 250px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header id="header">
        <div class="container header-inner">
            <div class="brand">
                <div class="logo">L</div>
                <span>Lum<span class="text-gradient">ière</span></span>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                </ul>
            </nav>

            <div class="search-wrapper">
                <i class="fas fa-search search-icon"></i>
                <input type="search" class="search" placeholder="Search luxury products...">
            </div>

            <div class="header-actions">
                <button class="btn btn-icon" aria-label="Account">
                    <i class="far fa-user"></i>
                </button>
                <button class="btn btn-icon" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                </button>
                <button class="btn btn-icon cart-btn" aria-label="Cart" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="floating-shapes">
            <div class="shape"></div>
            <div class="shape"></div>
            <div class="shape"></div>
        </div>
        
        <div class="container">
            <div class="hero-content animate-in">
                <div class="section-subtitle">Winter Collection 2024</div>
                <h1>Elevate Your <span class="highlight">Style</span> with Premium Luxury</h1>
                <p>Discover meticulously curated collections from world-renowned designers. Experience unparalleled quality with exclusive member benefits and complimentary worldwide shipping.</p>
                
                <div class="hero-actions">
                    <button class="btn btn-primary" id="exploreBtn">
                        Explore Collection <i class="fas fa-arrow-right"></i>
                    </button>
                    <button class="btn btn-ghost" id="watchVideo">
                        <i class="fas fa-play"></i> Watch Story
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="section" id="categories">
        <div class="container">
            <div class="section-header animate-in">
                <div class="section-subtitle">Curated Collections</div>
                <h2>Shop by <span class="text-gradient">Category</span></h2>
                <p class="muted">Browse our exclusive collections across premium categories</p>
            </div>

            <div class="categories-grid" id="categoriesGrid"></div>
        </div>
    </section>

    <!-- Products -->
    <section class="section" id="products">
        <div class="container">
            <div class="section-header animate-in">
                <div class="section-subtitle">Featured Selection</div>
                <h2>Premium <span class="text-gradient">Products</span></h2>
                <p class="muted">Handpicked luxury items with exceptional quality</p>
            </div>

            <div class="products-grid" id="productsGrid"></div>
        </div>
    </section>

    <!-- Deal Section -->
    <section class="deal-section" id="deals">
        <div class="container">
            <div class="deal-content animate-in">
                <div>
                    <div class="section-subtitle">Flash Sale</div>
                    <h2 style="color: white;">Limited Time Luxury Offer</h2>
                    <p class="muted" style="color: rgba(255,255,255,0.8); margin: 1.5rem 0;">
                        Experience the future of technology with our exclusive MacBook Air M2 deal. Unmatched performance meets elegant design.
                    </p>
                    
                    <div class="deal-timer">
                        <div class="timer-item">
                            <div class="timer-value" id="days">02</div>
                            <div class="timer-label">Days</div>
                        </div>
                        <div class="timer-item">
                            <div class="timer-value" id="hours">12</div>
                            <div class="timer-label">Hours</div>
                        </div>
                        <div class="timer-item">
                            <div class="timer-value" id="minutes">45</div>
                            <div class="timer-label">Minutes</div>
                        </div>
                        <div class="timer-item">
                            <div class="timer-value" id="seconds">30</div>
                            <div class="timer-label">Seconds</div>
                        </div>
                    </div>
                    
                    <div style="display: flex; align-items: center; gap: 1.5rem; margin: 2rem 0;">
                        <div>
                            <span class="current-price" style="font-size: 2rem; color: white;">$999</span>
                            <span class="original-price" style="color: rgba(255,255,255,0.6);">$1,199</span>
                        </div>
                        <span style="background: var(--danger); color: white; padding: 0.5rem 1rem; border-radius: var(--radius-full); font-weight: 600;">
                            -17% OFF
                        </span>
                    </div>
                    
                    <p style="color: rgba(255,255,255,0.9); margin-bottom: 2rem;">
                        Only <strong>12</strong> luxury units available at this exclusive price!
                    </p>
                    
                    <button class="btn btn-primary" id="buyDeal" style="background: white; color: var(--primary);">
                        <i class="fas fa-bolt"></i> Claim This Deal
                    </button>
                </div>
                
                <div class="deal-image animate-in" style="animation-delay: 0.2s;">
                    <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" alt="MacBook Air M2">
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section" id="testimonials">
        <div class="container">
            <div class="section-header animate-in">
                <div class="section-subtitle">Client Stories</div>
                <h2>What Our <span class="text-gradient">Clients</span> Say</h2>
                <p class="muted">Exceptional experiences from our distinguished clientele</p>
            </div>

            <div class="testimonials-grid">
                <div class="testimonial-card animate-in">
                    <div class="testimonial-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>"The attention to detail and exceptional customer service exceeded all expectations. My luxury timepiece arrived perfectly packaged with a personal note."</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=200&q=80)" alt="Ava Martin">
                        </div>
                        <div>
                            <h4>Ava Martin</h4>
                            <div class="muted">Luxury Collector</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-card animate-in">
                    <div class="testimonial-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <p>"Impeccable selection and seamless checkout experience. The quality of materials and craftsmanship is truly worth the investment."</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=200&q=80)" alt="Michael Lee">
                        </div>
                        <div>
                            <h4>Michael Lee</h4>
                            <div class="muted">Frequent Buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="newsletter-section">
        <div class="container">
            <div class="newsletter-content animate-in">
                <div class="section-subtitle" style="color: var(--accent-light);">Exclusive Access</div>
                <h2 style="color: white;">Join Our <span class="highlight">Inner Circle</span></h2>
                <p style="color: rgba(255,255,255,0.8); max-width: 500px; margin: 1.5rem auto;">
                    Subscribe to receive first access to limited collections, private sales, and insider stories from the world of luxury.
                </p>
                
                <form class="newsletter-form" id="newsletterForm">
                    <input type="email" id="newsletterEmail" placeholder="Enter your professional email" required>
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-gem"></i> Subscribe
                    </button>
                </form>
                
                <div id="newsletterMessage" style="margin-top: 1rem; min-height: 24px;"></div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div>
                    <div class="footer-logo">Lum<span style="color: var(--accent)">ière</span></div>
                    <p class="footer-description">
                        Redefining luxury e-commerce with curated collections and exceptional service since 2018.
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-link" aria-label="Instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="Twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="Pinterest">
                            <i class="fab fa-pinterest"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="LinkedIn">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </div>

                <div>
                    <h3 class="footer-heading">Collections</h3>
                    <ul class="footer-links">
                        <li><a href="#">Luxury Watches</a></li>
                        <li><a href="#">Fine Jewelry</a></li>
                        <li><a href="#">Designer Fashion</a></li>
                        <li><a href="#">Art & Decor</a></li>
                        <li><a href="#">Limited Editions</a></li>
                    </ul>
                </div>

                <div>
                    <h3 class="footer-heading">Services</h3>
                    <ul class="footer-links">
                        <li><a href="#">Personal Shopping</a></li>
                        <li><a href="#">Gift Concierge</a></li>
                        <li><a href="#">Worldwide Shipping</a></li>
                        <li><a href="#">Authenticity Guarantee</a></li>
                        <li><a href="#">VIP Experiences</a></li>
                    </ul>
                </div>

                <div>
                    <h3 class="footer-heading">Company</h3>
                    <ul class="footer-links">
                        <li><a href="#">Our Story</a></li>
                        <li><a href="#">Sustainability</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; <span id="currentYear"></span> Lumière Luxury Group. All rights reserved.</p>
                <p style="margin-top: 0.5rem; font-size: 0.75rem; opacity: 0.6;">
                    A demonstration of modern e-commerce design
                </p>
            </div>
        </div>
    </footer>

    <script>
        // Enhanced Sample Data
        const CATEGORIES = [
            { id: 'watches', name: 'Luxury Watches', icon: 'fa-clock', description: 'Swiss craftsmanship' },
            { id: 'jewelry', name: 'Fine Jewelry', icon: 'fa-gem', description: 'Diamond & gold' },
            { id: 'fashion', name: 'Designer Fashion', icon: 'fa-tshirt', description: 'Haute couture' },
            { id: 'tech', name: 'Premium Tech', icon: 'fa-laptop', description: 'Cutting-edge' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-glasses', description: 'Statement pieces' },
            { id: 'art', name: 'Art & Decor', icon: 'fa-palette', description: 'Collector items' }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'Rolex Submariner',
                price: 12500,
                oldPrice: 14500,
                rating: 5,
                reviews: 89,
                badge: 'Limited',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=800&q=80)',
                category: 'watches'
            },
            {
                id: 2,
                name: 'Diamond Necklace',
                price: 8900,
                oldPrice: 11000,
                rating: 5,
                reviews: 124,
                badge: '-20%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=800&q=80)',
                category: 'jewelry'
            },
            {
                id: 3,
                title: 'Hermès Birkin 30',
                price: 22000,
                rating: 5,
                reviews: 67,
                badge: 'Exclusive',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=80)',
                category: 'fashion'
            },
            {
                id: 4,
                title: 'Sony A7 IV',
                price: 3499,
                oldPrice: 3999,
                rating: 5,
                reviews: 156,
                badge: 'New',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=80)',
                category: 'tech'
            },
            {
                id: 5,
                title: 'Cartier Sunglasses',
                price: 1200,
                rating: 4,
                reviews: 42,
                badge: 'Popular',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=800&q=80)',
                category: 'accessories'
            },
            {
                id: 6,
                title: 'Abstract Painting',
                price: 7800,
                rating: 5,
                reviews: 23,
                badge: 'Unique',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1541961017774-22349e4a1262?auto=format&fit=crop&w=800&q=80)',
                category: 'art'
            }
        ];

        // State Management
        let cartCount = 0;
        let wishlist = [];

        // DOM Elements
        const header = document.getElementById('header');
        const cartCountEl = document.getElementById('cartCount');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');

        // Initialize
        document.addEventListener('DOMContentLoaded', () => {
            renderCategories();
            renderProducts();
            setupEventListeners();
            updateCurrentYear();
            
            // Animate elements on scroll
            setupScrollAnimations();
            
            // Start countdown timer
            startCountdown();
        });

        // Categories Rendering
        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(category => `
                <div class="category-card animate-in" data-category="${category.id}">
                    <div class="category-icon">
                        <i class="fas ${category.icon}"></i>
                    </div>
                    <h4>${category.name}</h4>
                    <p class="muted">${category.description}</p>
                </div>
            `).join('');
        }

        // Products Rendering
        function renderProducts(products = PRODUCTS) {
            productsGrid.innerHTML = products.map(product => `
                <article class="product-card animate-in" data-id="${product.id}">
                    ${product.badge ? `<div class="product-badge">${product.badge}</div>` : ''}
                    <div class="product-image">
                        <img src="${product.img}" alt="${product.title}" loading="lazy">
                        <div class="product-overlay">
                            <button class="btn btn-icon quick-view" data-id="${product.id}" aria-label="Quick view">
                                <i class="fas fa-eye"></i>
                            </button>
                            <button class="btn btn-icon add-wishlist" data-id="${product.id}" aria-label="Add to wishlist">
                                <i class="far fa-heart"></i>
                            </button>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3 class="product-title">${product.title}</h3>
                        <div class="muted">${product.category}</div>
                        <div class="product-price">
                            <span class="current-price">$${product.price.toLocaleString()}</span>
                            ${product.oldPrice ? `<span class="original-price">$${product.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div class="product-rating">
                            ${'<i class="fas fa-star"></i>'.repeat(Math.floor(product.rating))}
                            ${product.rating % 1 ? '<i class="fas fa-star-half-alt"></i>' : ''}
                            <span class="rating-count">(${product.reviews})</span>
                        </div>
                        <div class="product-actions">
                            <button class="btn btn-primary add-to-cart" data-id="${product.id}" style="flex: 1;">
                                <i class="fas fa-shopping-bag"></i> Add to Cart
                            </button>
                            <button class="btn btn-icon" aria-label="Compare">
                                <i class="fas fa-balance-scale"></i>
                            </button>
                        </div>
                    </div>
                </article>
            `).join('');
        }

        // Event Listeners Setup
        function setupEventListeners() {
            // Header scroll effect
            window.addEventListener('scroll', () => {
                header.classList.toggle('scrolled', window.scrollY > 50);
            });

            // Search functionality
            const searchInput = document.querySelector('.search');
            searchInput.addEventListener('input', (e) => {
                const query = e.target.value.toLowerCase();
                const filtered = PRODUCTS.filter(product => 
                    product.title.toLowerCase().includes(query) ||
                    product.category.toLowerCase().includes(query)
                );
                renderProducts(filtered);
            });

            // Add to cart
            document.addEventListener('click', (e) => {
                if (e.target.closest('.add-to-cart')) {
                    const productId = e.target.closest('.add-to-cart').dataset.id;
                    addToCart(productId);
                }
                
                if (e.target.closest('.add-wishlist')) {
                    const productId = e.target.closest('.add-wishlist').dataset.id;
                    addToWishlist(productId);
                }
            });

            // Category filtering
            categoriesGrid.addEventListener('click', (e) => {
                const categoryCard = e.target.closest('.category-card');
                if (categoryCard) {
                    const category = categoryCard.dataset.category;
                    const filtered = PRODUCTS.filter(product => product.category === category);
                    renderProducts(filtered);
                    
                    // Smooth scroll to products
                    document.getElementById('products').scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });

            // Newsletter form
            const newsletterForm = document.getElementById('newsletterForm');
            const newsletterMessage = document.getElementById('newsletterMessage');
            
            newsletterForm.addEventListener('submit', (e) => {
                e.preventDefault();
                const email = document.getElementById('newsletterEmail').value.trim();
                
                if (!validateEmail(email)) {
                    showMessage('Please enter a valid email address.', 'error');
                    return;
                }
                
                showMessage('Welcome to our inner circle! Check your email for exclusive content.', 'success');
                newsletterForm.reset();
                
                setTimeout(() => {
                    newsletterMessage.textContent = '';
                }, 5000);
            });

            // Explore button
            document.getElementById('exploreBtn').addEventListener('click', () => {
                document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
            });

            // Buy deal button
            document.getElementById('buyDeal').addEventListener('click', () => {
                addToCart('deal');
                showMessage('Limited edition added to your cart!', 'success');
            });
        }

        // Cart Functions
        function addToCart(productId) {
            cartCount++;
            updateCartCount();
            
            // Visual feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.transform = 'scale(1.1)';
            setTimeout(() => {
                cartBtn.style.transform = 'scale(1)';
            }, 300);
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.display = cartCount > 0 ? 'flex' : 'none';
        }

        // Wishlist Functions
        function addToWishlist(productId) {
            const product = PRODUCTS.find(p => p.id == productId);
            if (product && !wishlist.includes(productId)) {
                wishlist.push(productId);
                showMessage(`${product.title} added to wishlist`, 'info');
            }
        }

        // Countdown Timer
        function startCountdown() {
            const countdownDate = new Date();
            countdownDate.setDate(countdownDate.getDate() + 2); // 2 days from now
            countdownDate.setHours(12, 45, 30); // Set specific time

            function updateTimer() {
                const now = new Date().getTime();
                const distance = countdownDate - now;

                if (distance < 0) {
                    clearInterval(timerInterval);
                    document.querySelector('.deal-section').innerHTML = `
                        <div class="container text-center">
                            <h2 style="color: white;">This exclusive offer has ended</h2>
                            <p style="color: rgba(255,255,255,0.8); margin-top: 1rem;">
                                Subscribe to our newsletter to be the first to know about upcoming luxury deals.
                            </p>
                        </div>
                    `;
                    return;
                }

                const days = Math.floor(distance / (1000 * 60 * 60 * 24));
                const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((distance % (1000 * 60)) / 1000);

                document.getElementById('days').textContent = String(days).padStart(2, '0');
                document.getElementById('hours').textContent = String(hours).padStart(2, '0');
                document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
                document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
            }

            updateTimer();
            const timerInterval = setInterval(updateTimer, 1000);
        }

        // Utility Functions
        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }

        function showMessage(text, type) {
            const messageEl = document.getElementById('newsletterMessage');
            messageEl.textContent = text;
            messageEl.style.color = type === 'error' ? '#ff6b6b' : 
                                  type === 'success' ? '#51cf66' : 
                                  '#ffd43b';
            messageEl.style.display = 'block';
        }

        function updateCurrentYear() {
            document.getElementById('currentYear').textContent = new Date().getFullYear();
        }

        // Scroll Animations
        function setupScrollAnimations() {
            const observerOptions = {
                threshold: 0.1,
                rootMargin: '0px 0px -50px 0px'
            };

            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate-in');
                    }
                });
            }, observerOptions);

            // Observe all animate-in elements
            document.querySelectorAll('.animate-in').forEach(el => {
                observer.observe(el);
            });
        }
    </script>
</body>
</html>
