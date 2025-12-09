using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.LoremIpsumGenerator
{
    /// <summary>
    /// Query options for the Lorem Ipsum Generator API
    /// </summary>
    public class LoremIpsumGeneratorQueryOptions
    {
        /// <summary>
        /// The number of paragraphs to generate
        /// Example: 3
        /// </summary>
        [JsonProperty("paragraphs")]
        public string Paragraphs { get; set; }

        /// <summary>
        /// Start the text with 'Lorem ipsum dolor sit amet'
        /// Example: true
        /// </summary>
        [JsonProperty("startwithlorem")]
        public string Startwithlorem { get; set; }

        /// <summary>
        /// The maximum length of the generated text
        /// Example: 100
        /// </summary>
        [JsonProperty("maxlength")]
        public string Maxlength { get; set; }
    }
}
