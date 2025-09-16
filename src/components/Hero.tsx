import React from 'react';

const Hero: React.FC = () => {
  return (
    <section className="relative bg-gradient-to-br from-green-50 via-mint-50 to-sage-50 py-20 px-4">
      <div className="max-w-4xl mx-auto text-center">
        <h1 className="text-5xl md:text-6xl font-noto font-semibold text-sage-800 mb-6 animate-fade-in">
          Fresh & Healthy
          <span className="block text-green-600 mt-2">Nutritious Meals</span>
        </h1>
        <p className="text-xl text-sage-600 mb-8 max-w-2xl mx-auto animate-slide-up">
          Wholesome salads, fresh ingredients, and nourishing meals made with love
        </p>
        <div className="flex justify-center">
          <a 
            href="#menu"
            className="bg-green-600 text-white px-8 py-3 rounded-full hover:bg-green-700 transition-all duration-300 transform hover:scale-105 font-medium shadow-lg hover:shadow-green-200"
          >
            Explore Healthy Menu
          </a>
        </div>
      </div>
    </section>
  );
};

export default Hero;