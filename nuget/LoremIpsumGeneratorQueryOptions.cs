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
        /// </summary>
        [JsonProperty("paragraphs")]
        public int? Paragraphs { get; set; }

        /// <summary>
        /// Start the text with 'Lorem ipsum dolor sit amet'
        /// </summary>
        [JsonProperty("startwithlorem")]
        public bool? Startwithlorem { get; set; }

        /// <summary>
        /// The maximum length of the generated text (0 for no limit)
        /// </summary>
        [JsonProperty("maxlength")]
        public int? Maxlength { get; set; }
    }
}
