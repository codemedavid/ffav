import React from 'react';
import { ShoppingCart } from 'lucide-react';

interface HeaderProps {
  cartItemsCount: number;
  onCartClick: () => void;
  onMenuClick: () => void;
}

const Header: React.FC<HeaderProps> = ({ cartItemsCount, onCartClick, onMenuClick }) => {
  return (
    <header className="sticky top-0 z-50 bg-white/95 backdrop-blur-sm border-b border-green-200 shadow-sm">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-16">
          <button 
            onClick={onMenuClick}
            className="flex items-center space-x-2 text-sage-800 hover:text-green-600 transition-colors duration-200"
          >
            <img src="/logo.jpg" className="w-10 h-10 rounded-full"/>
            <h1 className="text-2xl font-noto font-semibold">FreshBite</h1>
          </button>
          
          <nav className="hidden md:flex items-center space-x-8">
            <a href="#hot-coffee" className="text-sage-700 hover:text-green-600 transition-colors duration-200">Salads</a>
            <a href="#iced-coffee" className="text-sage-700 hover:text-green-600 transition-colors duration-200">Pasta</a>
            <a href="#combo-meals" className="text-sage-700 hover:text-green-600 transition-colors duration-200">Combo Meals</a>
            <a href="#non-coffee" className="text-sage-700 hover:text-green-600 transition-colors duration-200">Drinks</a>
          </nav>
          
          <div className="flex items-center space-x-2">
            <button 
              onClick={onCartClick}
              className="relative p-2 text-sage-700 hover:text-sage-900 hover:bg-green-100 rounded-full transition-all duration-200"
            >
              <ShoppingCart className="h-6 w-6" />
              {cartItemsCount > 0 && (
                <span className="absolute -top-1 -right-1 bg-green-600 text-white text-xs rounded-full h-5 w-5 flex items-center justify-center animate-bounce-gentle">
                  {cartItemsCount}
                </span>
              )}
            </button>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;