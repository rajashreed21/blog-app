import SwiftUI

struct Topic: Identifiable {
    let id = UUID()
    let title: String
    let detail: String
}

struct ContentView: View {
    let topics = [
        Topic(title: "social media", detail: "Social media plays a pivotal role in today's interconnected world, influencing how we communicate, share information, and interact with each other. It has transformed the way businesses engage with customers, how people consume news, and even how social movements are organized. Social media platforms like Facebook, Twitter, Instagram, and LinkedIn have become integral parts of daily life, offering avenues for expression, connection, and collaboration. From a business perspective, social media provides a powerful tool for marketing, customer engagement, and brand building. It allows companies to reach a global audience, target specific demographics, and gather valuable insights through analytics. However, social media also raises concerns about privacy, misinformation, and its impact on mental health, highlighting the need for responsible use and regulation."),
        
        Topic(title: "learning platform", detail: "Online learning platforms have revolutionized education, offering flexible, accessible, and affordable alternatives to traditional classroom learning. Platforms like Coursera, Udemy, and Khan Academy provide a wide range of courses on diverse topics, allowing learners to acquire new skills, advance their careers, and pursue their interests from anywhere in the world. These platforms often use innovative technologies such as video lectures, interactive quizzes, and discussion forums to enhance the learning experience. They also offer certifications and credentials that are recognized by employers, making online learning a viable option for professional development. With the increasing demand for lifelong learning and upskilling, online learning platforms are poised to play an even greater role in the future of education."),
        
        Topic(title: "shopping", detail: "E-commerce has transformed the way we shop, offering convenience, variety, and competitive pricing that traditional brick-and-mortar stores cannot match. Online shopping platforms like Amazon, eBay, and Alibaba have made it possible to purchase almost anything from the comfort of our homes, at any time of day. This has led to a shift in consumer behavior, with more people choosing to shop online for its convenience and accessibility. E-commerce has also created new opportunities for businesses, allowing them to reach a global audience and operate with lower overhead costs. However, it has also raised concerns about the impact on traditional retail stores, the environment, and consumer privacy. As e-commerce continues to evolve, finding the right balance between convenience and sustainability will be key to its long-term success."),
        ]

    var body: some View {
        NavigationView {
            List(topics) { topic in
                NavigationLink(destination: DetailView(topic: topic)) {
                    Text(topic.title)
                }
            }
            .navigationTitle("Blog App")
        }
    }
}

struct DetailView: View {
    let topic: Topic

    var body: some View {
        ScrollView {
            VStack {
                Text(topic.title)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text(topic.detail)
                    .font(.body)
                    .padding()
                
            }
            .padding()
        }
        .navigationTitle("About")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
