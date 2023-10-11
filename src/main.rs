use time::macros::date;
use RustQuant::data::*;

fn main() {
    // New YahooFinanceData instance.
    // By default, date range is: 1970-01-01 to present.
    let mut yfd = YahooFinanceData::new("AAPL".to_string());

    // Can specify custom dates (optional).
    yfd.set_start_date(time::macros::datetime!(2019 - 01 - 01 0:00 UTC));
    yfd.set_end_date(time::macros::datetime!(2020 - 01 - 01 0:00 UTC));

    // Download the historical data.
    yfd.get_price_history();

    // Compute the returns.
    // Specify the type of returns to compute (Simple, Logarithmic, Absolute)
    // You don't need to run .get_price_history() first, .compute_returns()
    // will do it for you if necessary.
    yfd.compute_returns(ReturnsType::Logarithmic);

    println!("Apple's quotes: {:?}", yfd.price_history);
    println!("Apple's returns: {:?}", yfd.returns);
}
