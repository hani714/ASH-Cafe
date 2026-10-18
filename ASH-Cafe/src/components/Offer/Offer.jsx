import React, { useState, useEffect } from "react";
import axios from "axios";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/pagination";
import { Pagination } from "swiper/modules";
import "./offer.css";

const Offers = () => {
  // Define state variables
  const [offers, setOffers] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Fetch offers data from the backend API when the component mounts
    axios
      .get("http://localhost:5000/api/offer") // Replace with your backend API URL
      .then((response) => {
        setOffers(response.data); // Store fetched offers data in state
        setLoading(false); // Stop loading once data is fetched
      })
      .catch((error) => {
        console.error("Error fetching offers data:", error);
        setLoading(false); // Stop loading even if there was an error
      });
  }, []); // Empty dependency array to fetch data only once

  if (loading) {
    return <div>Loading...</div>; // Show a loading message while fetching data
  }

  return (
    <section className="offer section" id="offer">
      <h2 className="section__title" data-title="Offer">
        Special Offer For You
      </h2>

      <Swiper
        spaceBetween={30}
        pagination={{ clickable: true }}
        modules={[Pagination]}
        className="container"
      >
        {offers.map(({ image_url, title, discount, description }, index) => {
          return (
            <SwiperSlide className="offer__item" key={index}>
              <div className="offer__img-wrapper">
                <img src={`http://localhost:5000${image_url}`} alt={title} className="offer__img" />
              </div>

              <div className="offer__content">
                <h3 className="offer__title">{title}</h3>
                <span className="offer__discount">{discount}</span>
                <p className="offer__description">{description}</p>

                <a href="/" className="btn">
                  Order Now
                </a>
              </div>
            </SwiperSlide>
          );
        })}
      </Swiper>
    </section>
  );
};

export default Offers;
